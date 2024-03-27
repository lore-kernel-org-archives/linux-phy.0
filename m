Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C086C47DD9
	for <linux-phy@archiver.kernel.org>; Wed, 27 Mar 2024 18:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PhmFyhqkPybJfrWVpgMVbVetKvCiM8oNBDzzyTB9Q0M=; b=JwU2C6R9QNPyT8
	o6AlGgh2qKknGMu4KKsHDnxic888B5WpM8v/NuU5PbH70w7VXAkXyF4nxjkvV2w2iLIeWb47skPJK
	OnoCkBWbzqBN6bGGfGWXb/V5gUHe8Xh91SkTQhcK2RH5XiUiHHnnyfCtQY+ESkLgXH8rCYT4z9RnG
	h0g9np4YeZkZVd/F/JgMT9mkgycUCWOwA9ro2D8f8Jicn4DMS3DNCgPeJ28mfkLSIf61tuPAFfaX4
	w5Wyd4+Mrb1T1xJil4TLqCaPAfvWuqRS2JbyiozipGo6eUkcZ1HOkwbxf7l00hib/DfjmFnsuIMOD
	tNbwTjf77gnKAJbAhI3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpXfv-0000000AT7d-3nxk;
	Wed, 27 Mar 2024 18:06:59 +0000
Received: from smtp51.i.mail.ru ([95.163.41.87])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpXfs-0000000AT0S-3bpL
	for linux-phy@lists.infradead.org;
	Wed, 27 Mar 2024 18:06:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jiaxyga.com
	; s=mailru; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:
	Cc:To:From:From:Sender:Reply-To:To:Cc:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive:
	X-Cloud-Ids:Disposition-Notification-To;
	bh=Kl4DAfMrThUTbEpsy8OIaWRx4ECJjsEC+DZgg6JUlFE=; t=1711562808; x=1711652808; 
	b=QJHWJ2FWnhCdzwFF2ha/IltmJI8wvTFeUJxRS9yEWZkLtoY/mma8FsXlyO1RDba/krw986vCsVx
	w5hsdHIgRmv0NNfxxLTo5RfWmTGH3z6VGdpHQfYd4PJBcILikxMKSWNe9i26+RNhr9PjaaJflnVnc
	3P8oKUwWtcGcwiwXGxY=;
Received: by smtp51.i.mail.ru with esmtpa (envelope-from <danila@jiaxyga.com>)
	id 1rpXfh-0000000E2q5-0q4E; Wed, 27 Mar 2024 21:06:45 +0300
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
Subject: [PATCH 0/2] phy: qcom-qmp-ufs: Add support for SM8475
Date: Wed, 27 Mar 2024 21:06:40 +0300
Message-ID: <20240327180642.20146-1-danila@jiaxyga.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Authentication-Results: smtp51.i.mail.ru; auth=pass smtp.auth=danila@jiaxyga.com smtp.mailfrom=danila@jiaxyga.com
X-Mailru-Src: smtp
X-7564579A: EEAE043A70213CC8
X-77F55803: 4F1203BC0FB41BD92B2F338B3A1B03DBC32C72577B1B4A4B195BE4FF90B52CC2182A05F5380850404C228DA9ACA6FE27D2B3368C890E70B603ED270C30F246C5224714DC9D89A041FEB17DC202E68E303EE2A1A432EA2933
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE70043D879A87EF1BCEA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F7900637C867FEFF36BCDF178638F802B75D45FF36EB9D2243A4F8B5A6FCA7DBDB1FC311F39EFFDF887939037866D6147AF826D83B0D53EBDBBEB31787CFF83901193707C9582587F0825ED9CC7F00164DA146DAFE8445B8C89999728AA50765F79006375FFD5C25497261569FA2833FD35BB23D2EF20D2F80756B5F868A13BD56FB6657A471835C12D1D977725E5C173C3A84C34964A708C60C975A117882F4460429728AD0CFFFB425014E868A13BD56FB6657D81D268191BDAD3DC09775C1D3CA48CFA281FA8EA08C6015BA3038C0950A5D36C8A9BA7A39EFB766D91E3A1F190DE8FDBA3038C0950A5D36D5E8D9A59859A8B6088EA859A876218C76E601842F6C81A1F004C906525384303E02D724532EE2C3F43C7A68FF6260569E8FC8737B5C2249957A4DEDD2346B42E827F84554CEF50127C277FBC8AE2E8BA83251EDC214901ED5E8D9A59859A8B615F38A1EB2280F99089D37D7C0E48F6C5571747095F342E88FB05168BE4CE3AF
X-C1DE0DAB: 0D63561A33F958A572F24DCADD00AF615002B1117B3ED696A07DC1F01FB75464E772F934B9BCD185823CB91A9FED034534781492E4B8EEAD5C5DFC4BFF39B799F36E2E0160E5C55395B8A2A0B6518DF68C46860778A80D548E8926FB43031F38
X-C8649E89: 1C3962B70DF3F0ADE00A9FD3E00BEEDF77DD89D51EBB7742D3581295AF09D3DF87807E0823442EA2ED31085941D9CD0AF7F820E7B07EA4CF962540E96D3749566F3157B2473DCC9B393CF9C2F1A5992CA52A15E792DBBD0575F3776783CA996BF212F37558E72466442710B1986103C2E5E1C781D7312E8BFB0F00F6D3F2FCEA42BF32D1DA1046D202C26D483E81D6BE72B480F99247062FEE42F474E8A1C6FD34D382445848F2F3
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojRawEQSF5UtvrSC67IYQ+kA==
X-Mailru-Sender: 9EB879F2C80682A09F26F806C7394981DE6AB1E6944A41F4E693A2F4CD4B10000F9BD50AEF180468C84098C9553D294F2C62728BC403A049225EC17F3711B6CF1A6F2E8989E84EC137BFB0221605B344978139F6FA5A77F05FEEDEB644C299C0ED14614B50AE0675
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_110657_305736_4811C5EB 
X-CRM114-Status: UNSURE (   5.77  )
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

This series adds UFS QMP support for Qualcomm SM8475 SoC.

To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
To: Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>

Danila Tikhonov (2):
  dt-bindings: phy: Add QMP UFS PHY comptible for SM8475
  phy: qcom-qmp-ufs: Add SM8475 support

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  2 +
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 71 +++++++++++++++++++
 2 files changed, 73 insertions(+)

-- 
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
