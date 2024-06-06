Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 798FDC27C53
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jun 2024 00:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1YZDqXMLYdwAT4zjA8SdRNM9limirOMD2RlJ8ret5I=; b=thOgsKPrH9tydx
	yQHk6oALx+wtk+f+dxQiTQd7vOOtL7u56gRLzMRyk8xtF94WAE9l0emmlT9tleSEYgvGpG/ClTlw/
	P52k7W+O7Xe+W4cTM9nMEiaW2LJWsjrPG4kWuGVYuBAUY+1kGM4u3Pv7w+z1g4pmMmkuqUdd7Xq5/
	qYGBPcmlMfwNckzEXHAADcd/hpBnncmTg4+N5q2EfxSf4g/jm34FCk0OrcB0zTzDkDbabsbjTEBvF
	cvlATYO7G/mu4quKv16uoN77iXxMt6OzAF5ISgofhyLzzePvcNn3TUe7uF9zcah17IQ/nCgKbxgai
	5W1KWdgBa9G/abJK1cCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sF14w-00000007ySf-3eAi;
	Thu, 06 Jun 2024 00:34:06 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sF14s-00000007yQw-3mHm;
	Thu, 06 Jun 2024 00:34:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0743FCE19F5;
	Thu,  6 Jun 2024 00:34:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED856C2BD11;
	Thu,  6 Jun 2024 00:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717634040;
	bh=o/c2SY2SdtrHHxFtvOeQwKlUGe+wuEu5QP2QRQHLSQU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oQqU0uAo6YZR9MB9nD7gIN7IZbLcLM3q95r2XSqF4caEgCZPWbmbjSvwAvxq2LPtw
	 IqhkA6WBcFHJM4kuDo7PncPgXxx08u7/1cig8Xgj4aUV+rT1xy3VJyEj/FmrHwjuc0
	 cAdRQtmpG9QgdJmGxTzLq0jRozQMcq6SK6yfoeJ5Ssy7MJS/kCa5X4izdq1Cs4bQ9F
	 y7K4woIiPkE/nszaljK/thYmXQp2V98P0QD5v18i9qQ+SF/JNcwuW4wESFupBG+bLW
	 xPpOv48yQlUTV0/GuzyB2SA3C5qUHh7K8j/GlflY/Vp1kYW/tUh7R7I6KV5HtwBrKt
	 2qXp8wLv/jqJA==
Date: Wed, 5 Jun 2024 18:33:57 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Kevin Hilman <khilman@baylibre.com>,
	linux-amlogic@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: g12a-usb2-phy: add optional
 power-domains
Message-ID: <171763403568.3519766.9448445516249166136.robh@kernel.org>
References: <20240605-topic-amlogic-upstream-bindings-fixes-power-domains-phy-v1-1-c819b0ecd8c8@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240605-topic-amlogic-upstream-bindings-fixes-power-domains-phy-v1-1-c819b0ecd8c8@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_173403_231352_BCD2FF42 
X-CRM114-Status: UNSURE (   7.92  )
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


On Wed, 05 Jun 2024 11:36:00 +0200, Neil Armstrong wrote:
> On newer SoCs, the USB2 PHY can require a power-domain to operate,
> add it as optional.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/amlogic,g12a-usb2-phy.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
