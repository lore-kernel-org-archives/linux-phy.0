Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E8FEC6FD19
	for <linux-phy@archiver.kernel.org>; Thu,  9 Mar 2023 18:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zYL+felEajfaQGBIwyCG74zu25t+nEoQ5aqoBJF5g8M=; b=gSAk9o9T8CjPuB
	yf2rqlGFSf1t/PYxT6ritilp85Rmitb1CW+rw9WFZwGMYns5Ce97mrkUn1dPtGcFkAIP+6+OfjClz
	tkMlb/+PktXkgJewhFO5x0FgPxUr70wqYVRDLQvLchMTIx3TvlzC8RrcUfoJzmWCnN9lHbAzRlslM
	YyeFzIO6Y3azuyL+basllSJl1635TXeUvGRskBmhLNtgY2Q2COqzieCGVebzXvQBIwY777EzQp/fU
	obacUnIjL49BUaGrRY66onYyn+FK3PbQIowQW7AFYTClTOxN+BMhA6C9zMz6VMVakgnGSXdtWHKn3
	TY+WxFfHILq3uwaFXerw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paLM1-00Bb36-SB
	for linux-phy@archiver.kernel.org; Thu, 09 Mar 2023 18:51:05 +0000
Received: from smtp61.i.mail.ru ([95.163.41.99])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paLLy-00Bazy-7O
	for linux-phy@lists.infradead.org; Thu, 09 Mar 2023 18:51:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jiaxyga.com; s=mailru;
	h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From:From:Subject:Content-Type:Content-Transfer-Encoding:To:Cc; bh=GKTMVCNBdd5IAB3eOey0p1z8QiO1cQ4NlwUIAuNGZuA=;
	t=1678387862;x=1678477862; 
	b=CIO4X3J2dCoWXmgFXnakTNgqfPNDUvHSfuQbxA9MkZKnpt5YaSBiGz35GiGzSpeJ+7mlq01e/dDRJxNmGag/f+daydktEx38torMl6InWB5KCoMzKVBDP79JTp4OLQf0EOvxVhOvDiT+XQ98B27cENoVB38aCsGFXqtKhEx4e8s=;
Received: by smtp61.i.mail.ru with esmtpa (envelope-from <danila@jiaxyga.com>)
	id 1paLLo-002rxt-GN; Thu, 09 Mar 2023 21:50:53 +0300
From: Danila Tikhonov <danila@jiaxyga.com>
To: agross@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	davidwronek@gmail.com,
	Danila Tikhonov <danila@jiaxyga.com>
Subject: [PATCH 0/2] phy: qcom-qmp-ufs: Add support for SM7150 
Date: Thu,  9 Mar 2023 21:50:47 +0300
Message-Id: <20230309185049.170878-1-danila@jiaxyga.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Authentication-Results: smtp61.i.mail.ru; auth=pass smtp.auth=danila@jiaxyga.com smtp.mailfrom=danila@jiaxyga.com
X-Mailru-Src: smtp
X-7564579A: 646B95376F6C166E
X-77F55803: 4F1203BC0FB41BD9BCEC41593EBD83572AB17126CD52FE0BB53BB47C1B744DA8182A05F53808504035FABC9C2A2626CB284211DF2D02DB7BC1117CA9BB7C9E492ABAB0560DC1A2F2
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE7A352E4F59960F77CEA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F79006375E7A1B5661595F038638F802B75D45FF36EB9D2243A4F8B5A6FCA7DBDB1FC311F39EFFDF887939037866D6147AF826D88E48F7AFCB5EE0F00D35250F579E40E6117882F4460429724CE54428C33FAD305F5C1EE8F4F765FC93A51A5089774A2DA471835C12D1D9774AD6D5ED66289B52BA9C0B312567BB23117882F44604297287769387670735209647ADFADE5905B1C26CFBAC0749D213D2E47CDBA5A96583BA9C0B312567BB2376E601842F6C81A19E625A9149C048EEC24E1E72F37C03A07C6FCE95544A9834D8FC6C240DEA7642DBF02ECDB25306B2B78CF848AE20165D0A6AB1C7CE11FEE31DAA61796BF5227B6E0066C2D8992A16C4224003CC836476E2F48590F00D11D6E2021AF6380DFAD1A18204E546F3947CB11811A4A51E3B096D1867E19FE1407959CC434672EE6371089D37D7C0E48F6C8AA50765F790063762EFFBA1C158ADAAEFF80C71ABB335746BA297DBC24807EABDAD6C7F3747799A
X-C1DE0DAB: 0D63561A33F958A56C46B9145716F36637044E56BF2E133ECE22BA5B70441A324EAF44D9B582CE87C8A4C02DF684249CC203C45FEA855C8F
X-C8649E89: 4E36BF7865823D7055A7F0CF078B5EC49A30900B95165D34AAC3D1FDB34D048868A218EC13F860D5BAADFDCC7D05DF0A85028E200F6734C95E007A2D6CCC48EB1D7E09C32AA3244C4B513982D2F1450D506A4D87034495EB69B6CAE0477E908D98DBA7662A2C9987
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojrI5GYPq6VsdMih5EX9dWLw==
X-DA7885C5: 9575E6C952D9754352948C0EBEBEC2F37194B06575433BB35B94381910900C97D8288D6B1992AB67EF2421ABFA55128D02E9C42E3A59EA20
X-Mailru-Sender: 9EB879F2C80682A09F26F806C73949812E89BE89565EF847A8D7812CB63BA61E6E88B0DBEEC58FB0643683D8C0F3ED1CA3C71A376745D86BBE86167304C7680C3980CE5AAA35C7CD60F22E8815EDE5EAEAB4BC95F72C04283CDA0F3B3F5B9367
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_105102_479770_84799F78 
X-CRM114-Status: UNSURE (   4.66  )
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

David Wronek (2):
  dt-bindings: phy: Add QMP UFS PHY comptible for SM7150
  phy: qcom-qmp-ufs: Add SM7150 support

 .../phy/qcom,msm8996-qmp-ufs-phy.yaml         |  3 +
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 57 +++++++++++++++++++
 2 files changed, 60 insertions(+)

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
