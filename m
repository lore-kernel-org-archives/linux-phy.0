Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82D93C76196
	for <linux-phy@archiver.kernel.org>; Sat, 11 Mar 2023 23:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QKvycBxUBySxX/ZGP0nXZPDjgf0ZGLBKwsYaj+qmENI=; b=I1a2y1SVc9yfte
	gEtfudjTpTTIomBI/3vKxFZtsj0hkuwNOe5us4w9WYUskntOHh+jmj0FJO86oWhP+OVOszBVWnmeP
	1Y2JmnSW3RjGQ3MB8iGqo5wHVaAfftkdl+GzgB9jQk1gzJtRu/e5HXoqGIiYGL8+ZHttJ+NtZyeEz
	f/cDyGYuU74GuC01FpxXaMcAmY/yiYYvlZOZtAz6zCQ/mfq9upp9GLmPeJWwgqK6Nt1UIOQb+YH+1
	ShsZoy92DRbkN5SjTLI1HqP+nXk1UHdHtqGeASBtydUokhq0QYqEPyLvmhz2eQJ2vrUJVmE6J5Fa1
	vCC/YwCFjHXD6sKU4iwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pb8TB-001SEL-MX
	for linux-phy@archiver.kernel.org; Sat, 11 Mar 2023 23:17:45 +0000
Received: from smtp46.i.mail.ru ([95.163.41.84])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pb8T7-001SDC-W3
	for linux-phy@lists.infradead.org; Sat, 11 Mar 2023 23:17:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jiaxyga.com; s=mailru;
	h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From:From:Subject:Content-Type:Content-Transfer-Encoding:To:Cc; bh=yNQUQIqdylZOtWdRp07sWFsYjHmj+6XeQnwvqugYH0c=;
	t=1678576662;x=1678666662; 
	b=UBT8IF4hfgY1dx8Nls6m5kixMLdLE9rA1UPT0BIPQ1PxFeHOIFdhrBJIOMeLpQcxN+82lMoC4qStCn+IKJTR2twVqtkArkXEN1YXuR1ZpxfAgnfVBp3FpZ9Qdu7cnPNqr7LekMAtmCluCN8K0eOxn80uA+LfBOdB1dAXc0VcjCg=;
Received: by smtp46.i.mail.ru with esmtpa (envelope-from <danila@jiaxyga.com>)
	id 1pb8T1-00B9aE-2V; Sun, 12 Mar 2023 02:17:35 +0300
From: Danila Tikhonov <danila@jiaxyga.com>
To: agross@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: dmitry.baryshkov@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	davidwronek@gmail.com,
	Danila Tikhonov <danila@jiaxyga.com>
Subject: [PATCH v2 0/2] phy: qcom-qmp-ufs: Add support for SM7150
Date: Sun, 12 Mar 2023 02:17:31 +0300
Message-Id: <20230311231733.141806-1-danila@jiaxyga.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Authentication-Results: smtp46.i.mail.ru; auth=pass smtp.auth=danila@jiaxyga.com smtp.mailfrom=danila@jiaxyga.com
X-Mailru-Src: smtp
X-7564579A: B8F34718100C35BD
X-77F55803: 4F1203BC0FB41BD9BCEC41593EBD83570AA601AEA34798F73F5BC8FBBA927E37182A05F53808504005843A5FDE927F368E6662FEDEC6AFF756DE8276EE1B4C0B2ACA4F1D781514DA
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE79D9C320A40CA82D4EA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F7900637829D9538242026C38638F802B75D45FF36EB9D2243A4F8B5A6FCA7DBDB1FC311F39EFFDF887939037866D6147AF826D828D06B9E32C23F0D727E2F8F27C7E5D6117882F4460429724CE54428C33FAD305F5C1EE8F4F765FC1F3D1E7C87716A07A471835C12D1D9774AD6D5ED66289B52BA9C0B312567BB23117882F44604297287769387670735204B6963042765DA4B618001F51B5FD3F9D2E47CDBA5A96583BA9C0B312567BB2376E601842F6C81A19E625A9149C048EE41BF15D38FB6CB3A1B780A39BCC1DD35D8FC6C240DEA7642DBF02ECDB25306B2B78CF848AE20165D0A6AB1C7CE11FEE36D3A1509E11137116E0066C2D8992A16C4224003CC836476E2F48590F00D11D6E2021AF6380DFAD1A18204E546F3947CB11811A4A51E3B096D1867E19FE1407959CC434672EE6371089D37D7C0E48F6C8AA50765F790063752BC29AF30EF825DEFF80C71ABB335746BA297DBC24807EABDAD6C7F3747799A
X-C1DE0DAB: 0D63561A33F958A575C03DA3C5642B1CB11436FC6533849E5AD0401A58EBFCA54EAF44D9B582CE87C8A4C02DF684249CC203C45FEA855C8F
X-C8649E89: 4E36BF7865823D7055A7F0CF078B5EC49A30900B95165D341C998A3771F0415375AE9313AD7C7CC203C7577E50A71565071A78589369CDD2ECA4D15217522D061D7E09C32AA3244C28F98ADB488FB8232E425A95669FD332F2F5F14F68F1805B0D282625F6E20647
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojEg2t1XEOuWFDZPI0qXV5Vw==
X-DA7885C5: 664F9D43EADD1558BF872CFFA1755FAD3FE5FF52EF7A9FEE7787BA85C37591B2D8288D6B1992AB67EF2421ABFA55128D02E9C42E3A59EA20
X-Mailru-Sender: 9EB879F2C80682A09F26F806C73949814893C669902AB60405E4978E20955CA597AF23EEB7B65FE8643683D8C0F3ED1CA3C71A376745D86BBE86167304C7680C3980CE5AAA35C7CD60F22E8815EDE5EAEAB4BC95F72C04283CDA0F3B3F5B9367
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230311_151742_572510_DD950EF4 
X-CRM114-Status: UNSURE (   5.40  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This series adds UFS QMP support for Qualcomm SM7150 SoC.

Changes in v2:
- Switch to new bindings (qcom,sc8280xp-qmp-ufs-phy.yaml)
- Fix compilation error
- Switch to 0xff instead of 0xFF
- Add offsets
- Set no_pcs_sw_reset to true
- Add Dmitry Reviewed-by on patch 2
- Link to v1: https://lore.kernel.org/all/20230309185049.170878-1-danila@jiaxyga.com/

David Wronek (2):
  dt-bindings: phy: Add QMP UFS PHY comptible for SM7150
  phy: qcom-qmp-ufs: Add SM7150 support

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 61 +++++++++++++++++++
 2 files changed, 62 insertions(+)

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
