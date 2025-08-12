Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8B13CA0EC4
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 19:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zIZAX5oPBL3gvyDe6gEUbxd4BMPjDkLWUIBBZ1Y37wM=; b=2TixfdL65JFOds
	zvPH952PzFTrn4vssfU6yJ8BYqfMY99/GUW1dZISuPCofU1Azde4WtdUO22WcgW+/48PrsOv69Lyi
	JqyAokBajn+BLaajHrTyLlrXoBnGABQ4cwlFNEBI/kk5OTO6H0yvyVhA90c5M2zSDSVQVu5DKfgN4
	ExcE42XwudMHp6g2LIa2s9CNuP45OGjuc3TuewQMBxSYfs4E3I6Y96Q6FjXyClrWTIGbLg8AqLZTY
	0HVPZqGA4GqPrLQG8/6xCcIlCEJ6sNkkDCZGg2yWEOrx0ggj9cypVDkVm2jYlPmvs0narmZsg+nhr
	bHBsAgwAyvYeOs8K7SeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uluc0-0000000Boxe-0xxW;
	Tue, 12 Aug 2025 19:24:44 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uls2v-0000000BRyE-0qbO
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 16:40:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 86507A576DA;
	Tue, 12 Aug 2025 16:40:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D868C4CEF0;
	Tue, 12 Aug 2025 16:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755016820;
	bh=k8qMfbp9FpXJlzkhvTknfoxCnJOkfXP1yU8UVJVUij8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=sFWWAhPWeN7cFpFmZ/sKZpfkrXDhnr2fBrcMLyx//4IP5so9isZRVBpIzvZ4nzMKG
	 +nN0YKEsk8YXCML09ef+8niir4juD0dQ+0oNN3L9WvMpTZqNSmebJhKJwmGz/5kFA2
	 vKcAv9J+s7UuxTezpcHrvtjBjDdvisvv6eM35r3MKHM4G7CO/7NuLpONgYJ9NNzsF5
	 tBUWM9yKec/dDeKdQvjR9mGgXLjUsW6w+z4ltvhfAnVo/hYHlw+9jVgZgtm+f9XPxe
	 xeAnr5I9foYHGP+1PRe6L/WMnOWQ4q0Y4dnNvk5Ck2fkRBmHOFy46RPo2MZ7VL3vUU
	 GUFchW7Dh+imQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@linaro.org>, Pengyu Luo <mitltlatltl@gmail.com>
Cc: Luca Weiss <luca.weiss@fairphone.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250812093957.32235-1-mitltlatltl@gmail.com>
References: <20250812093957.32235-1-mitltlatltl@gmail.com>
Subject: Re: [PATCH] phy: qualcomm: phy-qcom-eusb2-repeater: fix override
 properties
Message-Id: <175501681673.633066.704631034138052201.b4-ty@kernel.org>
Date: Tue, 12 Aug 2025 22:10:16 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_094021_307547_F2E7D904 
X-CRM114-Status: UNSURE (   4.59  )
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


On Tue, 12 Aug 2025 17:39:56 +0800, Pengyu Luo wrote:
> property "qcom,tune-usb2-preem" is for EUSB2_TUNE_USB2_PREEM
> property "qcom,tune-usb2-amplitude" is for EUSB2_TUNE_IUSB2
> 
> The downstream correspondence is as follows:
> EUSB2_TUNE_USB2_PREEM: Tx pre-emphasis tuning
> EUSB2_TUNE_IUSB2: HS trasmit amplitude
> EUSB2_TUNE_SQUELCH_U: Squelch detection threshold
> EUSB2_TUNE_HSDISC: HS disconnect threshold
> EUSB2_TUNE_EUSB_SLEW: slew rate
> 
> [...]

Applied, thanks!

[1/1] phy: qualcomm: phy-qcom-eusb2-repeater: fix override properties
      commit: 942e47ab228c7dd27c2ae043c17e7aab2028082c

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
