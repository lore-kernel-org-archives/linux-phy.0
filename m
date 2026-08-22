Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA3A8C5DF8C
	for <linux-phy@archiver.kernel.org>; Sat, 22 Aug 2026 07:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=70SyA+R/jicnZ73nQ5zXmRAqok0E697x9mp1ENkzRh0=; b=jWvATShGd1UNA6
	n878rEGhxoVvjOwruJfyEwJBs1gNCBLu1tA2joecw6cbv6vP/O9kp2OcM7JCNdfVgYEXhj/7BAiOL
	uqHEQrW81Ei08UbLw4aMv3sSMaVJyJ+Rb/m51sHVrcRM5Xq+03UpUPiGo+iCNKZDQa+h5o1hu0ZXL
	4Ehei/11ZgLkz9VtyOwC03xAbF7TLR3/mb4b05L3K3vTjgY2djyzOQac8zLkQ10vxLKbP6gi9x+pe
	C5PRNsVOdZnF5TScLpVSh3fLh41sm0KSQxssk7TiaXqgxiU5K/jnJGRH7Dsccdvpy7PYXb/6b3fap
	hwqf3WKPqHfmokZon6QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxgab-0000000EMmn-1gl2;
	Sat, 22 Aug 2026 07:56:29 +0000
Received: from mx.nabladev.com ([178.251.229.89])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxgaY-0000000EMmL-23Je;
	Sat, 22 Aug 2026 07:56:27 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E8C0B11C810;
	Sat, 22 Aug 2026 09:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1787385380;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=hhrZlTJD57f4/yzbAXHLJ0B7LqCOpZLSDj7R+HVhpXI=;
	b=Bahs9m1NLSG1dC/urzlh10sXJ86yJTr5lz6BX8w85ZkLH+ojN8I7L5Om5CRjUnWYu6JmoN
	tI4yG0Y1eLX0bxBtz3fn3ZsXu+Yn9lPOVrAiRaHRJ4QLFEhhilanU6Mt0SkO1g3Xsldbdg
	bBze2aDVyPjyA8GeMqlUgLyQRtK0JI7+m5i02cCL6pQdJQW6h9R4V4U4TyTgsKF/saeoYP
	FX1qa2ZIgsxifnb1w1RQfCdB5XxLE5ev3pya6kjt9nFezkOeDUCXjm7czj/Me0I8zbN2xV
	M6CyeGUUkMDjMR7K9b6D7FeG4FrNu0FNcc64YmSaLwb5HiSEhl8nhZ+9aUfELw==
Message-ID: <ca72ed6d-1565-4312-bd9b-891874a80afb@nabladev.com>
Date: Sat, 22 Aug 2026 06:49:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Marek Vasut <marex@nabladev.com>
Subject: Re: [PATCH 05/16] dt-bindings: usb: add FUSB340 switch binding
To: Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Christian Bruel <christian.bruel@foss.st.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Srinivas Kandagatla <srini@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Pankaj Dev <pankaj.dev@st.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
References: <20260821-ucpd-host-fusb340-v7-2-rfc-v1-0-c5e27cbc0795@foss.st.com>
 <20260821-ucpd-host-fusb340-v7-2-rfc-v1-5-c5e27cbc0795@foss.st.com>
Content-Language: en-US
In-Reply-To: <20260821-ucpd-host-fusb340-v7-2-rfc-v1-5-c5e27cbc0795@foss.st.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260822_005626_683616_3759F3DF 
X-CRM114-Status: UNSURE (   3.94  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 8/21/26 6:23 PM, Fabrice Gasnier wrote:
> Document the ON Semiconductor FUSB340 SuperSpeed switch as a USB switch
> binding with enable-gpios and select-gpios controls. The switch can be used
> in Type-C applications where a reversible cable requires a switch.
> 
> Assisted-by: GitHub-Copilot:GPT-5.4-mini

Use gpio-sbu-mux , there is no need to add more AI generated duplicate 
drivers.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
