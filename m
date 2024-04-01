Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B766CD1288
	for <linux-phy@archiver.kernel.org>; Mon,  1 Apr 2024 18:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bFjrDZbRAwIK0Nko0AyUu1DBQ6c7Ef/tzd55VAa/Dzg=; b=a4WhVTcatMPkF1
	MR8jJov7NgypaDhQgL+oFkeV1O3oApxDo6Y7FNpitdPEFKFhKX/7zlybz0agvsPjFaGOI3OgrzC6o
	HyCZNXxLGuuVR00XdDDipTYGYKxlM7yVRSgAHa2IwD84Em3uYn6TGIf8b6ztG9c4J20TZ5Zjz2lTA
	THKFiXmoaHdIxMQ7VsD/Afq1d7Hw7h9nVWzkLemX3nggaCPabM8omGD0Q82EwtbNhmoRhDZa3LrAY
	Rjqpk22nCatYBQso9Odsc8nPIBhov6Qyjo2nBMEaaD0ve3mx+JmWCaNmf1I0UUl3/ozzJPNn5BsXW
	ZdHM+4sLhURdioQIbEsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrMJ5-00000008YPc-3ZPj;
	Mon, 01 Apr 2024 18:22:55 +0000
Received: from smtp33.i.mail.ru ([95.163.41.74])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrMJ2-00000008YOP-1AnP
	for linux-phy@lists.infradead.org;
	Mon, 01 Apr 2024 18:22:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jiaxyga.com
	; s=mailru; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:From:Sender:Reply-To:To:Cc:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive:
	X-Cloud-Ids:Disposition-Notification-To;
	bh=DpY9JXPC44/eMZj2gSpT6otT+n2T9KhHqd19vlxiZfY=; t=1711995769; x=1712085769; 
	b=uzk62mY+g91JqnN8sJKnJPssPy1btSPHxmEppXoUunrVoG6jiVHSg1bn0Nsud6vpdl3dhwLOHPB
	vK0jyDGqy0fXlhm6WtnL5yyNfPIvE62VaDtZv/I4/E/BU6ZvdWq2Bg3zS0eikGjVfGPBrJ1L+rdvb
	JOmVVpiOPN10kS7SaPI=;
Received: by smtp33.i.mail.ru with esmtpa (envelope-from <danila@jiaxyga.com>)
	id 1rrMIx-00000002IQ2-1hjU; Mon, 01 Apr 2024 21:22:47 +0300
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
Subject: [PATCH 2/2] arm64: dts: qcom: sc7180: Fix UFS PHY clocks
Date: Mon,  1 Apr 2024 21:22:40 +0300
Message-ID: <20240401182240.55282-3-danila@jiaxyga.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240401182240.55282-1-danila@jiaxyga.com>
References: <20240401182240.55282-1-danila@jiaxyga.com>
MIME-Version: 1.0
Authentication-Results: smtp33.i.mail.ru; auth=pass smtp.auth=danila@jiaxyga.com smtp.mailfrom=danila@jiaxyga.com
X-Mailru-Src: smtp
X-4EC0790: 10
X-7564579A: 646B95376F6C166E
X-77F55803: 4F1203BC0FB41BD9D135BF24EC7C3B84F4481F7E27D197A12AFDB31AE04A9497182A05F538085040425E929FF18E1F0EF378A8CA21F699D6ECF7839DC21535F8754E9BE2FEC5E1B8141B3585208100AE
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE75EB26DC3398F980CEA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F79006372D22CC9620B7D5068638F802B75D45FF36EB9D2243A4F8B5A6FCA7DBDB1FC311F39EFFDF887939037866D6147AF826D83807F9C9B80303AF33E3BBA4BC0C4FFBCD457F6DC05D41FFCC7F00164DA146DAFE8445B8C89999728AA50765F79006370277CA7F994D7EF5389733CBF5DBD5E9C8A9BA7A39EFB766F5D81C698A659EA7CC7F00164DA146DA9985D098DBDEAEC878444BBB7636F62AF6B57BC7E6449061A352F6E88A58FB86F5D81C698A659EA73AA81AA40904B5D9A18204E546F3947C89DDFE3E282F3DD1302FCEF25BFAB3454AD6D5ED66289B523666184CF4C3C14F6136E347CC761E07725E5C173C3A84C3B15E146EA45457A9BA3038C0950A5D36B5C8C57E37DE458B330BD67F2E7D9AF16D1867E19FE14079C09775C1D3CA48CF27ED053E960B195E1DD303D21008E298D5E8D9A59859A8B6B372FE9A2E580EFC725E5C173C3A84C30A3B31C63366F72535872C767BF85DA2F004C90652538430E4A6367B16DE6309
X-C1DE0DAB: 0D63561A33F958A523916B9BD823608A5002B1117B3ED6969E4C888B65BB5CE092212597CCBD6D77823CB91A9FED034534781492E4B8EEAD09F854029C6BD0DAC79554A2A72441328621D336A7BC284946AD531847A6065A535571D14F44ED41
X-C8649E89: 1C3962B70DF3F0ADE00A9FD3E00BEEDF3FED46C3ACD6F73ED3581295AF09D3DF87807E0823442EA2ED31085941D9CD0AF7F820E7B07EA4CF5D3E05D67DC882B47ACA4BE2584ABFD6EC07BC5E6CB5CCE69E9010FF0ED266489C8755E3AEA661EF58CF1FE2B37DBE108947428205F5841666FC8896552336569A5213D35D638E29457F7985AD47CF5C02C26D483E81D6BE72B480F99247062FEE42F474E8A1C6FD34D382445848F2F3
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojZkLXUwYT7t+hS+PkUqVHSA==
X-Mailru-Sender: 9EB879F2C80682A09F26F806C739498113902588151D385CBC5A20191D90C84FFF12582E31AF308F694A01E8F937DE022C62728BC403A049225EC17F3711B6CF1A6F2E8989E84EC137BFB0221605B344978139F6FA5A77F05FEEDEB644C299C0ED14614B50AE0675
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240401_112252_657495_7990FDBF 
X-CRM114-Status: UNSURE (   8.37  )
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

QMP PHY used in SC7180 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

While at it, let's move 'clocks' property before 'clock-names' to match
the style used commonly.

Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 2b481e20ae38..5c9ec8047f00 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -1585,9 +1585,12 @@ ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sc7180-qmp-ufs-phy",
 				     "qcom,sm7150-qmp-ufs-phy";
 			reg = <0 0x01d87000 0 0x1000>;
-			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
-			clock-names = "ref", "ref_aux";
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_MEM_CLKREF_CLK>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 			power-domains = <&gcc UFS_PHY_GDSC>;
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-- 
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
