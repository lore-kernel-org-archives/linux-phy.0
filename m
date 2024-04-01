Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3978CCD128D
	for <linux-phy@archiver.kernel.org>; Mon,  1 Apr 2024 18:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gVB3hhPOTt6x7C+jnKAJBLjEOTwQo6SdFMRPkUr50Gk=; b=pjavvteagD7Ad/
	6JNANgyM+DmAZDXuNdQ0xHk8pFj5Ct3f/BjelfF4oULQ5CqLtk4HVzys6MCGmyebg34od6XrGINVH
	g/DFltUYY64C+Lv0TlL+h9NhhTNxxycXaIafKa9wcZpzEqidL9tmtqb14ZbG5797H7BY3w/pnP+od
	Xm1fJ+L7aUh8EzboYW/RVCo2RrMKR3P4+EJPzTUZgf+FYEgS/5KTydd4q6K39kZeLLj1sotwFxKEF
	ueYKwvJ7fdvQ8ytewNaAQI2uNY7cYeDQqE0t0APDdfpF3hHzvJJhot3wsPqmlIFg1tAp1MY2iV2dg
	wLO+Zh+I2saZmycYVVZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrMJ6-00000008YPr-2Q3Q;
	Mon, 01 Apr 2024 18:22:56 +0000
Received: from smtp33.i.mail.ru ([95.163.41.74])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrMJ2-00000008YNp-1BBq
	for linux-phy@lists.infradead.org;
	Mon, 01 Apr 2024 18:22:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jiaxyga.com
	; s=mailru; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:From:Sender:Reply-To:To:Cc:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive:
	X-Cloud-Ids:Disposition-Notification-To;
	bh=rE/6Hns67LwFbftBAGx/n6w1EgL0y4oR42klBNVcfE4=; t=1711995768; x=1712085768; 
	b=SEZluHKIbOU/jMdzk8vAp5uOTKCULzp8k3f6A+CBppr23vDontb7HhGYrE6dIoh7pGjTdizBpAk
	3lgH8+JVSSrlY8ME4pHQKdHlVatWSY1U7fvA90hFCuEI7RXsn56cxPh74icPdnM0wE14UX1fyXtJs
	6yoH3e9zfFOPHrQQRQ8=;
Received: by smtp33.i.mail.ru with esmtpa (envelope-from <danila@jiaxyga.com>)
	id 1rrMIv-00000002IQ2-2M9x; Mon, 01 Apr 2024 21:22:46 +0300
From: Danila Tikhonov <danila@jiaxyga.com>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	cros-qcom-dts-watchers@chromium.org,
	manivannan.sadhasivam@linaro.org,
	davidwronek@gmail.com
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Danila Tikhonov <danila@jiaxyga.com>
Subject: [PATCH 1/2] dt-bindings: phy: qmp-ufs: Fix PHY clocks for SC7180
Date: Mon,  1 Apr 2024 21:22:39 +0300
Message-ID: <20240401182240.55282-2-danila@jiaxyga.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240401182240.55282-1-danila@jiaxyga.com>
References: <20240401182240.55282-1-danila@jiaxyga.com>
MIME-Version: 1.0
Authentication-Results: smtp33.i.mail.ru; auth=pass smtp.auth=danila@jiaxyga.com smtp.mailfrom=danila@jiaxyga.com
X-Mailru-Src: smtp
X-4EC0790: 10
X-7564579A: 78E4E2B564C1792B
X-77F55803: 4F1203BC0FB41BD9D135BF24EC7C3B84F734B6BC09D5E079BF5B6D56DAADA3F2182A05F5380850406731DDB76E620E6AF378A8CA21F699D68523B832B01838B1754E9BE2FEC5E1B88D7482F2B228143A
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE7A3589DC202DD7369EA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F79006372A285F85D463FE138638F802B75D45FF36EB9D2243A4F8B5A6FCA7DBDB1FC311F39EFFDF887939037866D6147AF826D8DC515EE24A67353733E3BBA4BC0C4FFBEB2110AFCC493DBBCC7F00164DA146DAFE8445B8C89999728AA50765F7900637028599BB38096F4F389733CBF5DBD5E9C8A9BA7A39EFB766F5D81C698A659EA7CC7F00164DA146DA9985D098DBDEAEC82D01283D1ACF37BAF6B57BC7E6449061A352F6E88A58FB86F5D81C698A659EA73AA81AA40904B5D9A18204E546F3947CCF7CD7A0D5AA5F252D242C3BD2E3F4C64AD6D5ED66289B523666184CF4C3C14F6136E347CC761E07725E5C173C3A84C30FAB88D2ED79F87BBA3038C0950A5D36B5C8C57E37DE458B330BD67F2E7D9AF16D1867E19FE14079C09775C1D3CA48CFE478A468B35FE7671DD303D21008E298D5E8D9A59859A8B6B372FE9A2E580EFC725E5C173C3A84C3517C622C16A6DF10089D37D7C0E48F6C5571747095F342E88FB05168BE4CE3AF
X-C1DE0DAB: 0D63561A33F958A51B88334D4AE022285002B1117B3ED696ED234DCE671C431B4A0A47EBA01A636A823CB91A9FED034534781492E4B8EEADB0A1B66E9F5C9ED4C79554A2A72441328621D336A7BC284946AD531847A6065A535571D14F44ED41
X-C8649E89: 1C3962B70DF3F0ADE00A9FD3E00BEEDF3FED46C3ACD6F73ED3581295AF09D3DF87807E0823442EA2ED31085941D9CD0AF7F820E7B07EA4CFCD5D558F9C967CC083FBE42CFA4A07C2047F88C0B17DFC0171851BA5130748D98657CCA151A12AF558CF1FE2B37DBE106B7FC1128A10B13666FC889655233656E7A952FDE299D4F4457F7985AD47CF5C02C26D483E81D6BE72B480F99247062FEE42F474E8A1C6FD34D382445848F2F3
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojZkLXUwYT7t8Kz0i/FuZbOw==
X-Mailru-Sender: 9EB879F2C80682A09F26F806C739498113902588151D385C6750B362712FA5BDAFD5AE59D9C1826CA69BB6E52D2D94BF2C62728BC403A049225EC17F3711B6CF1A6F2E8989E84EC137BFB0221605B344978139F6FA5A77F05FEEDEB644C299C0ED14614B50AE0675
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240401_112252_662172_B4EEDFDD 
X-CRM114-Status: UNSURE (   7.52  )
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

QMP UFS PHY used in SC7180 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

This change obviously breaks the ABI, but it is inevitable since the
clock topology needs to be accurately described in the binding.

Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 91a6cc38ff7f..a79fde9a8cdf 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -86,6 +86,7 @@ allOf:
             enum:
               - qcom,msm8998-qmp-ufs-phy
               - qcom,sa8775p-qmp-ufs-phy
+              - qcom,sc7180-qmp-ufs-phy
               - qcom,sc7280-qmp-ufs-phy
               - qcom,sc8180x-qmp-ufs-phy
               - qcom,sc8280xp-qmp-ufs-phy
-- 
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
