Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48D5DC7618E
	for <linux-phy@archiver.kernel.org>; Sat, 11 Mar 2023 23:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Ujr58VUxIHifRVFvEuIvJ1uRorYI/fQ0/0xNAwr9AE=; b=zNBPaRuA5ci2oy
	Tu0bNWng33bjFnPSK0Why9g/3D9pUsMi7pncEnVuXLee4xFmwjC5HRV5CUHtdd0hIWGWUbrNvmxGM
	mdlPNEDOYNjLQkOxS+EI7cliSdmvGvFOU5pfuIkuEgdC8yGDLW8utn3Ca51a2udEKJl2UD4u3CUiz
	4aj0oaKNL6Ta1HhmvLnBTZMEwu05ROQDVmLycnk1X1K0PAKb+Eu/44A0gq20hdMY8APL7YXc9XYiJ
	cXB9QY+IuHpDQlFeNnrU5Ydgd/Dg8H70+t1J2r+Yr4VjcXaTnstE97GVGjll1T19VqgmKncd0VYB3
	yTP8pEHX1od05ZC/9VFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pb8TB-001SEC-Ja
	for linux-phy@archiver.kernel.org; Sat, 11 Mar 2023 23:17:45 +0000
Received: from smtp46.i.mail.ru ([95.163.41.84])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pb8T7-001SDF-Un
	for linux-phy@lists.infradead.org; Sat, 11 Mar 2023 23:17:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jiaxyga.com; s=mailru;
	h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:From:Subject:Content-Type:Content-Transfer-Encoding:To:Cc; bh=zZT7SzQItSXGsV/KQyC5x/5aIAx9EI9rLbBKcRq43u4=;
	t=1678576662;x=1678666662; 
	b=X3fFMhlnySTH1XCz2480agfZwY0VyFksEiKYFg3CUDYL79hZeAJk6UJ4gcZAMOwyb9qkksZq6V3ADecOnrRjHdXTu+7kbOHiIufc1B5ZXwUrakoZpurxV0j6w9eLrrNMBJGDIOP+MJuixtL6xtFOws4j5SQ4JRzp1EbD3/dlgTA=;
Received: by smtp46.i.mail.ru with esmtpa (envelope-from <danila@jiaxyga.com>)
	id 1pb8T2-00B9aE-QV; Sun, 12 Mar 2023 02:17:37 +0300
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
Subject: [PATCH v2 1/2] dt-bindings: phy: Add QMP UFS PHY comptible for SM7150
Date: Sun, 12 Mar 2023 02:17:32 +0300
Message-Id: <20230311231733.141806-2-danila@jiaxyga.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230311231733.141806-1-danila@jiaxyga.com>
References: <20230311231733.141806-1-danila@jiaxyga.com>
MIME-Version: 1.0
Authentication-Results: smtp46.i.mail.ru; auth=pass smtp.auth=danila@jiaxyga.com smtp.mailfrom=danila@jiaxyga.com
X-Mailru-Src: smtp
X-7564579A: B8F34718100C35BD
X-77F55803: 4F1203BC0FB41BD9BCEC41593EBD83573328AE13154FE908333A02E638E8A8D8182A05F5380850404C463074FC77DC138E2B1AC6EE66EAB056DE8276EE1B4C0B37749537E00BFDDB
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE79D9C320A40CA82D4EA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F79006378437B1752DAB1FC78638F802B75D45FF36EB9D2243A4F8B5A6FCA7DBDB1FC311F39EFFDF887939037866D6147AF826D82D64FD58ACC9660044F6CD9B640F7099117882F4460429724CE54428C33FAD305F5C1EE8F4F765FCF87214F1A954108EA471835C12D1D9774AD6D5ED66289B52BA9C0B312567BB23117882F4460429728776938767073520B28585415E75ADA9618001F51B5FD3F9D2E47CDBA5A96583BA9C0B312567BB2376E601842F6C81A19E625A9149C048EE7532CA1512B81981C0837EA9F3D197644AD6D5ED66289B52698AB9A7B718F8C46E0066C2D8992A16725E5C173C3A84C3FF30E5DF5FCA5605BA3038C0950A5D36B5C8C57E37DE458B330BD67F2E7D9AF16D1867E19FE14079C09775C1D3CA48CF3D321E7403792E342EB15956EA79C166A417C69337E82CC275ECD9A6C639B01B78DA827A17800CE7D283DE70228D6EEC731C566533BA786AA5CC5B56E945C8DA
X-C1DE0DAB: 0D63561A33F958A53461CD82E4D7BF09B11436FC6533849E8763C17BAD019EE74EAF44D9B582CE87C8A4C02DF684249CC203C45FEA855C8F
X-C8649E89: 4E36BF7865823D7055A7F0CF078B5EC49A30900B95165D34806D3522FB05EB398661A9A2C639ED650B7A1628F01AB333E78EB3C228D7F04ABCB358D55C3987C91D7E09C32AA3244C416EAA5C6103FFEF0CC09B718F715AB2F2F5F14F68F1805B0D282625F6E20647
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojEg2t1XEOuWGEAT+5cEw80A==
X-Mailru-Sender: 9EB879F2C80682A09F26F806C73949814893C669902AB604585B4DD48715B08C5C8D7F440B56D7D3643683D8C0F3ED1CA3C71A376745D86BBE86167304C7680C3980CE5AAA35C7CD60F22E8815EDE5EAEAB4BC95F72C04283CDA0F3B3F5B9367
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230311_151742_571283_6B7A99A6 
X-CRM114-Status: UNSURE (   5.81  )
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

From: David Wronek <davidwronek@gmail.com>

Document the QMP UFS PHY compatible for SM7150.

Signed-off-by: David Wronek <davidwronek@gmail.com>
Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 64ed331880f6..cd0fbbd3593d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -18,6 +18,7 @@ properties:
     enum:
       - qcom,sc8280xp-qmp-ufs-phy
       - qcom,sm6125-qmp-ufs-phy
+      - qcom,sm7150-qmp-ufs-phy
       - qcom,sm8550-qmp-ufs-phy
 
   reg:
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
