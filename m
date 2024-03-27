Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC5C9C47DD9
	for <linux-phy@archiver.kernel.org>; Wed, 27 Mar 2024 19:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ooe3KEpQ45jRAhSL5MC1mblrrUfVPME1w5e5Qds1Gv4=; b=0i9CGG5paa/ZLo
	DI5sRn+zdERr9hUeWLBgNn9A5iZW+svfQlDx8JLt8+5s8SUh09kw9PnQcHXXBaxMzLgtxZKmTTc6o
	LsT8ROdvfZUuPK6tAkShdTJhHchGx4B5lrM2M5GNHGEsn0YJNQfxxYIL30kjQJ3heZRRQhqKiof7f
	2IBtX95OYicZKpqNLWgMXRKc4iI3BDw4E6KlJbGpzxY9UFlpheSfyBqYyOQ5gUvGnluKWDtDgKvXY
	L8dmrb8RpuGcNt9djdesiIigwH5T1BcjYM5jeiQXZGaOCNdL5NHk8qi+h6aYMqXW0zZGWmbgAoViD
	7P/ygTg84ibh0FuDPmVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpYn0-0000000AkvB-2bSt;
	Wed, 27 Mar 2024 19:18:22 +0000
Received: from smtp51.i.mail.ru ([95.163.41.87])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpXfs-0000000AT1W-3cSL
	for linux-phy@lists.infradead.org;
	Wed, 27 Mar 2024 18:06:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jiaxyga.com
	; s=mailru; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:From:Sender:Reply-To:To:Cc:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive:
	X-Cloud-Ids:Disposition-Notification-To;
	bh=Ozbvpd50mMOhmROETRACJY+X584otF1sahtKcR6rIOE=; t=1711562809; x=1711652809; 
	b=KDRGBv1Dz3Oq4MGO1f1c8rAkzUxLJWaETjZsFDe98Kbldcn82H116wdRNxmMsSSWTuLOongTFd6
	Y60YeJdE1GMHi0Q5OXfzm+lXYJ0/5W3n1DxaUuMSqW4Bv1M0r9Em/zWkQeww857bYinBnyJ8O6K6p
	UVYn6M60JfPEBtWT14g=;
Received: by smtp51.i.mail.ru with esmtpa (envelope-from <danila@jiaxyga.com>)
	id 1rpXfj-0000000E2q5-0ADH; Wed, 27 Mar 2024 21:06:47 +0300
From: Danila Tikhonov <danila@jiaxyga.com>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Danila Tikhonov <danila@jiaxyga.com>
Subject: [PATCH 1/2] dt-bindings: phy: Add QMP UFS PHY comptible for SM8475
Date: Wed, 27 Mar 2024 21:06:41 +0300
Message-ID: <20240327180642.20146-2-danila@jiaxyga.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240327180642.20146-1-danila@jiaxyga.com>
References: <20240327180642.20146-1-danila@jiaxyga.com>
MIME-Version: 1.0
Authentication-Results: smtp51.i.mail.ru; auth=pass smtp.auth=danila@jiaxyga.com smtp.mailfrom=danila@jiaxyga.com
X-Mailru-Src: smtp
X-4EC0790: 10
X-7564579A: B8F34718100C35BD
X-77F55803: 4F1203BC0FB41BD9D135BF24EC7C3B84ED50F4FA0F0B672491A1E78CF0A7D1F0182A05F538085040EC60E88F3D52D51A03ED270C30F246C5B183B29E756A1548FEB17DC202E68E3028006A18B89A7667
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE7548C33FFD72831AFEA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F79006374D30FA0D294D462C8638F802B75D45FF36EB9D2243A4F8B5A6FCA7DBDB1FC311F39EFFDF887939037866D6147AF826D8AB845910D741013387CFF83901193707A1D2B17E004D5259CC7F00164DA146DAFE8445B8C89999728AA50765F79006377C70927E34808485389733CBF5DBD5E9C8A9BA7A39EFB766F5D81C698A659EA7CC7F00164DA146DA9985D098DBDEAEC80CABCCA60F52D7EBF6B57BC7E6449061A352F6E88A58FB86F5D81C698A659EA73AA81AA40904B5D9A18204E546F3947CCEBC872EF0A1BB65BA3038C0950A5D36C8A9BA7A39EFB766D91E3A1F190DE8FDBA3038C0950A5D36D5E8D9A59859A8B603D88DA7F5FEDC253AA81AA40904B5D99C9F4D5AE37F343AD1F44FA8B9022EA23BBE47FD9DD3FB595F5C1EE8F4F765FC2EE5AD8F952D28FBE2021AF6380DFAD18AA50765F790063735872C767BF85DA227C277FBC8AE2E8B5D9D64F11F3A190A75ECD9A6C639B01B4E70A05D1297E1BBCB5012B2E24CD356
X-C1DE0DAB: 0D63561A33F958A5560F7045A31B99455002B1117B3ED696580D1C975CBBE2BCC638DF663A625AFA823CB91A9FED034534781492E4B8EEAD6A17C1D737525568C79554A2A72441328621D336A7BC284946AD531847A6065A535571D14F44ED41
X-C8649E89: 1C3962B70DF3F0ADE00A9FD3E00BEEDF3FED46C3ACD6F73ED3581295AF09D3DF87807E0823442EA2ED31085941D9CD0AF7F820E7B07EA4CF8CECF1AE73E676C4D314B93E46C301BF4BCFA6A81ACE138C13EB575B325410748FF2D56E53A08728F212F37558E724669036F1ADCD25B506E5E1C781D7312E8B39F18895F3C73CAA42BF32D1DA1046D202C26D483E81D6BE72B480F99247062FEE42F474E8A1C6FD34D382445848F2F3
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojRawEQSF5UttxZI0ZYcZ79A==
X-Mailru-Sender: 9EB879F2C80682A09F26F806C7394981DE6AB1E6944A41F40841F56765D88C402307561DCE953FAD86697F630E165A9D2C62728BC403A049225EC17F3711B6CF1A6F2E8989E84EC137BFB0221605B344978139F6FA5A77F05FEEDEB644C299C0ED14614B50AE0675
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_110657_305842_D33313D8 
X-CRM114-Status: UNSURE (   6.76  )
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

Document the QMP UFS PHY compatible for SM8475.

Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 91a6cc38ff7f..1e8c3abb09a4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -32,6 +32,7 @@ properties:
       - qcom,sm8250-qmp-ufs-phy
       - qcom,sm8350-qmp-ufs-phy
       - qcom,sm8450-qmp-ufs-phy
+      - qcom,sm8475-qmp-ufs-phy
       - qcom,sm8550-qmp-ufs-phy
       - qcom,sm8650-qmp-ufs-phy
 
@@ -98,6 +99,7 @@ allOf:
               - qcom,sm8250-qmp-ufs-phy
               - qcom,sm8350-qmp-ufs-phy
               - qcom,sm8450-qmp-ufs-phy
+              - qcom,sm8475-qmp-ufs-phy
               - qcom,sm8550-qmp-ufs-phy
               - qcom,sm8650-qmp-ufs-phy
     then:
-- 
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
