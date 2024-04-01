Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB5DFCD128A
	for <linux-phy@archiver.kernel.org>; Mon,  1 Apr 2024 18:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PJPdSH5zZFUkJQmvHTWtt9ukuQkB4spXiHsWiNO75Zg=; b=mK6Xkirzhlw0ho
	ynFmyHAWlrri0kIA+oNAbF/YgWz76RzB0bkkkZ3Gw7nMRrckNUYuCGOtoyefmwp2xL6RPz2n4uCY2
	djG3y2DMGUpKvSU3VLnpG7PMsssgEaiI6FflwCktMnszaNwRAclJnkMvXPRqtIpdXqEj53Nn9gJyd
	fpBNELt02Io+OPOpr8v+JWCFn61K5EyW/Z7wHIyVLuYY1mKkp2gk+wikCjzjqSCplXUqYjoNxTHtZ
	8Xlgto0gcutew9qCjtbdcTyYiysn/kh4bo4Aq1V4GYIHn/2WRH5JQwgfAJPBTYql8tJ/jquXC2J8J
	jiCRFNz47ZmwqzC10Iog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrMJ6-00000008YPk-10YW;
	Mon, 01 Apr 2024 18:22:56 +0000
Received: from smtp33.i.mail.ru ([95.163.41.74])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrMJ2-00000008YNi-0tSQ
	for linux-phy@lists.infradead.org;
	Mon, 01 Apr 2024 18:22:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jiaxyga.com
	; s=mailru; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:
	Cc:To:From:From:Sender:Reply-To:To:Cc:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive:
	X-Cloud-Ids:Disposition-Notification-To;
	bh=ShGyo1CUXQ5HPR3+k6tqEEBbNMUAZ7JWfYNb5Y/jwgo=; t=1711995768; x=1712085768; 
	b=nzkOOz+EjLnJuWkjPrvMVjZtrspLGRa5M8m9PK6SzAhl6SB+luJPAhL9jZxtZpQ/0Gq2AYp1h2L
	mT9JmWXtBEjNaiFZUN/Kes26EQ/6rDBUcnGqyvLlNxMWaQpPAPLH1DTqJ49KmauSsWZCKK8rQbyqV
	IirYa37nyA3UIgC+tSM=;
Received: by smtp33.i.mail.ru with esmtpa (envelope-from <danila@jiaxyga.com>)
	id 1rrMIt-00000002IQ2-1ZbC; Mon, 01 Apr 2024 21:22:44 +0300
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
Subject: [PATCH 0/2] phy: qcom-qmp-ufs: Fix PHY QMP clocks for SC7180
Date: Mon,  1 Apr 2024 21:22:38 +0300
Message-ID: <20240401182240.55282-1-danila@jiaxyga.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Authentication-Results: smtp33.i.mail.ru; auth=pass smtp.auth=danila@jiaxyga.com smtp.mailfrom=danila@jiaxyga.com
X-Mailru-Src: smtp
X-7564579A: B8F34718100C35BD
X-77F55803: 4F1203BC0FB41BD9D135BF24EC7C3B8467D85483E9EA2C72D4DE81C4A4EEAA95182A05F5380850402B52B0DDFBE73495F378A8CA21F699D64179DF9C447BBFCD754E9BE2FEC5E1B818FB9CDCE596FCA9
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE77633BACAB33B9508C2099A533E45F2D0395957E7521B51C2CFCAF695D4D8E9FCEA1F7E6F0F101C6778DA827A17800CE721AF84DC1D70954DEA1F7E6F0F101C6723150C8DA25C47586E58E00D9D99D84E1BDDB23E98D2D38B73AB1701401CD871F6D061299D4DFACDFCDFBA1F025B8584A17D34953EC636E0A471835C12D1D9774AD6D5ED66289B5278DA827A17800CE7820CF4CC0E318EFB9FA2833FD35BB23D2EF20D2F80756B5F868A13BD56FB6657A471835C12D1D977725E5C173C3A84C37EF884183F8E4D67117882F4460429728AD0CFFFB425014E868A13BD56FB6657D81D268191BDAD3DC09775C1D3CA48CFA4DC95554899BC9EBA3038C0950A5D36C8A9BA7A39EFB766D91E3A1F190DE8FDBA3038C0950A5D36D5E8D9A59859A8B6D4C4ECAC619A54F376E601842F6C81A1F004C906525384303E02D724532EE2C3F43C7A68FF6260569E8FC8737B5C22494854413538E1713FE827F84554CEF50127C277FBC8AE2E8BA83251EDC214901ED5E8D9A59859A8B6A8DADCFA31BDB70175ECD9A6C639B01B4E70A05D1297E1BBCB5012B2E24CD356
X-C1DE0DAB: 0D63561A33F958A53162F1C686CC645C5002B1117B3ED696AA99809DCD2E960B30C8F815570A3530823CB91A9FED034534781492E4B8EEADB71243024C627CEAC79554A2A72441328621D336A7BC284946AD531847A6065A535571D14F44ED41
X-C8649E89: 1C3962B70DF3F0ADE00A9FD3E00BEEDF77DD89D51EBB7742D3581295AF09D3DF87807E0823442EA2ED31085941D9CD0AF7F820E7B07EA4CFEA8A2686A51622C3E5B9F373AF52626300E8ADEC78EC0D7DC2807A2F3F6B43D1E80DAFFC47B24EFF58CF1FE2B37DBE10001FABD5F0BBD70D66FC8896552336569188EE975B8B1B39457F7985AD47CF5C02C26D483E81D6BE72B480F99247062FEE42F474E8A1C6FD34D382445848F2F3
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojZkLXUwYT7t9vcwvJsGGJ/Q==
X-Mailru-Sender: 9EB879F2C80682A09F26F806C739498113902588151D385CEA62B7A4765414871F283CC98C034A737BFAD2062C45D6D62C62728BC403A049225EC17F3711B6CF1A6F2E8989E84EC137BFB0221605B344978139F6FA5A77F05FEEDEB644C299C0ED14614B50AE0675
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240401_112252_665763_BD104D72 
X-CRM114-Status: UNSURE (   9.30  )
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

This series of patches is based on the series from Manivannan:
https://lore.kernel.org/all/20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org/

Patch from David adding a UFS nodes for SC7180(SM7125):
https://lore.kernel.org/all/20240121-sm7125-upstream-v4-6-f7d1212c8ebb@gmail.com/

The patch submitted by David and a series of patches submitted by Manivannan
were both applied at approximately the same time. As a result, David's patch
did not include this change.

To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
To: Conor Dooley <conor+dt@kernel.org>
To: cros-qcom-dts-watchers@chromium.org
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: David Wronek <davidwronek@gmail.com>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>

Danila Tikhonov (2):
  dt-bindings: phy: qmp-ufs: Fix PHY clocks for SC7180
  arm64: dts: qcom: sc7180: Fix UFS PHY clocks

 .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml          | 1 +
 arch/arm64/boot/dts/qcom/sc7180.dtsi                     | 9 ++++++---
 2 files changed, 7 insertions(+), 3 deletions(-)

-- 
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
