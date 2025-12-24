Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90263E7491C
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 07:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aS/9ylM679aEjl4qLrz0bAuZYiwa7yKRfyK1aqaHJi8=; b=MOU2+fLUJlsrRO
	s3VjzjIWS2A98EcTjcqMvNNGzGRKwpZWeQJBGUmgyhL6VsYhKNOm3mwkMPiYC8jThnmcdFkYQmKhs
	zcwGS5zNv371M7+Kza0umhMlmNCseCTTXMKL0JKnKvONMQfchhR/in1nteChi4u+5PNiISigck7CJ
	2soyP8Bv2i7mh5J7oXvoEQJt32D4BCkYlFet4xEBlfJlGGRjbEIMBaiGSYQ3Tlz4V8Nv7ZdJSY3+V
	llWNY0dZtPg6Vv6owM4fkFLdv7qyb4CHXY/ISbscB/Q32v7lgsxyUaOGU8neUoVl5XLwRfbV8lkgn
	PnDj7HSDorUMOrXlqy6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYJMU-0000000GXzM-1MwR;
	Wed, 24 Dec 2025 07:32:46 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYJMS-0000000GXym-0pjk
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 07:32:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6DA3A441ED;
	Wed, 24 Dec 2025 07:32:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CDB7C4CEFB;
	Wed, 24 Dec 2025 07:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766561563;
	bh=ylJP+93JfVCyvVbLsNC+iyO0mJirMHcMZA2YaclsNzo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=DcZforZFCtQ09DeUye0vTlp5wv2lsP7PB8bcBUR08JNKQfbUtXvQz1fKlGjZeKh+P
	 qVZjEY05PMSIGL6NO0kXfiIggwv6fZvSjwpqTwvQqekyOm7CR7uXDspqUim8BfUrxE
	 cveSbjbce1TIBOiBnu22VF+lX5n8INcMOseTQ12JMeVgmvnzTS7KkeVnvJvzwpNyDL
	 1pzJKJbCuPp2DG4RpawJoPrKCqRBdvC5CxScMYJcaDyamB9cvIJeH5qRNenNhHLoZx
	 VQk25LGSMgGHu/Uhkb95Nf0vJhFDWXxhrD+PJKw4bbv0AR1BFtodCLMMveHQgXzd+O
	 1F8kHBiecJoRg==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 Pengyu Luo <mitltlatltl@gmail.com>, Johan Hovold <johan+linaro@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
Subject: Re: [PATCH v3 0/3] Add eusb2 repeater squelch detect parameter
 override
Message-Id: <176656155885.817806.9341828805932941339.b4-ty@kernel.org>
Date: Wed, 24 Dec 2025 13:02:38 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_233244_264034_C726B63F 
X-CRM114-Status: UNSURE (   6.44  )
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


On Fri, 19 Dec 2025 23:01:05 +0530, Krishna Kurapati wrote:
> Add support for eusb2 repeater squelch detect parameter override via DT.
> 
> Squelch detect parameter adjusts the voltage level for the threshold used
> to detect valid high-speed data.
> 
> Changes in v3:
> - Moved status property to end of repeater node.
> - Updated commit text as per comments received in bindings patch.
> - Retained Krzysztof and Abel RB tags (since its upating commit text adding
>   information in bindings code and moving status property in dt code)
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add squelch param update
      commit: a590c0f935349b9f3ae72d9fdec002689915519d
[2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add squelch detect param update
      commit: 5c87da0308f9395700fd3072fcc45b43234366fb
[3/3] arm64: dts: qcom: sm8750-mtp: Add eusb2 repeater tuning parameters
      (no commit info)

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
