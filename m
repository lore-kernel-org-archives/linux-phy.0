Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85386C624C6
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 13:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MYjGE+bKuQkESQhQ1aGPXdgfeDupn++tpFy1EgJLD4E=; b=KwV8pxA8VLrxTV
	rwMSCura7BQZRKDERY8A2AgzgWEF+MhvxYwi2ZW6miwlRDkNX7ZmG32Hm7cufu4T0Va/yh1Kb7Xum
	6XJwzHe4l1yaeSNTDO920MzS76YZ+8FLwqAjsBDebXDeRc8Rt3ndWcPhNKJazhDfEHiwOQmxNMh3K
	tZ8L10homI1H4qMZl4/3NnJvbkg94FqbY9yxHAVx/bdUjMlZIeRqpxypkidEly7nMsmLeXHSlncuj
	2ZA2NIRZlNUme/6/ozdOlI4SUP8R/hu+vNUjjddcuXyyqFtQrgcBgLDkfST111LU9sRPRwmPslGwp
	TYN0Niqj4xHJ+IblrPrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12XR-00000009a4B-0oaw;
	Mon, 31 Aug 2026 13:59:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12XP-00000009a3n-1bEj
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 13:59:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F182C43D09;
	Mon, 31 Aug 2026 13:59:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADCE71F00A3D;
	Mon, 31 Aug 2026 13:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788184742;
	bh=7+CvhtcqpL9LlO3vZRZJVBm4ZHg/NPx+bJ7qZ6gUihg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=gjCH8PVpjTBsD1ePcxwIoDX6HHOneozCA3ON2UCBVWEb9PqTdRgB7u3B0naRADa8y
	 3UYdXFjwVShwDE0nFrR7S+M4LTm6g+NjeIi905m06z8WQSE7xDBlNln816peOK5MKO
	 fPeohNoYbQI0SqnObkfW+qQ1V1bU25KaEjQUKqyCo0lcIv/VXBOom8Q6jTK/hdlTav
	 lqjTVt1B/HNkR46lwZod20e93j5lVZk1Bxoog4EpqZ9/idcNUTtNZ6uHYzrRFyafG0
	 0WjtqYcykn4iPDxwbOO8uQareLy/NLQ6T4tAmagdW0QKi9AJNI2xcEC7aGT63LnZRD
	 Yw8cvs0eYkVrQ==
Date: Mon, 31 Aug 2026 08:59:02 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Bhargav Joshi <j.bhargav.u@gmail.com>
Cc: dmaengine@vger.kernel.org, Roger Quadros <rogerq@kernel.org>,
	Ravi B <ravibabu@ti.com>, Kumar Gupta <ajay.gupta@ti.com>,
	Andreas Kemnade <andreas@kemnade.info>, m-chawdhry@ti.com,
	Neil Armstrong <neil.armstrong@linaro.org>, simona.toaca@nxp.com,
	Andrzej Siewior <bigeasy@linutronix.de>,
	Tony Lindgren <tony@atomide.com>, goledhruva@gmail.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Sergei Shtylyov <sshtylyov@ru.mvista.com>,
	Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org,
	daniel.baluta@gmail.com, Kevin Hilman <khilman@baylibre.com>,
	linux-omap@vger.kernel.org, Frank Li <Frank.Li@kernel.org>,
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH v2 6/7] dt-bindings: usb: ti,am33xx-usb: Convert to DT
 schema
Message-ID: <178818474136.784979.12649803457088631518.robh@kernel.org>
References: <20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com>
 <20260818-ti-am33-usb-v2-6-66fd44d66824@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260818-ti-am33-usb-v2-6-66fd44d66824@gmail.com>
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


On Tue, 18 Aug 2026 19:58:48 +0530, Bhargav Joshi wrote:
> Convert the TI AM33xx USB Wrapper text binding to DT schema.
> Changes during conversion:
> - Drop the USB control module from child nodes, as it physically resides
>   within the System Control Module address space, not the USB wrapper.
> - Allow standard phy@[0-9a-f]+$ child node names alongside the legacy
>   usb-phy@[0-9a-f]+$.
> - Mark the legacy ti,hwmods property as deprecated.
> - Document required #address-cells, #size-cells, and ranges property
>   missing from text binding.
> 
> Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
> ---
>  .../devicetree/bindings/usb/am33xx-usb.txt         | 143 ---------------------
>  .../devicetree/bindings/usb/ti,am33xx-usb.yaml     | 103 +++++++++++++++
>  2 files changed, 103 insertions(+), 143 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
