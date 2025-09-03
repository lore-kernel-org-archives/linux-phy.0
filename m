Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 091C5CA1007
	for <linux-phy@archiver.kernel.org>; Wed,  3 Sep 2025 06:55:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9ARgwz198eV0lq1vXG6tnAO2X6GdVd7XXsoO3MnPu0=; b=kYyQcR7E3Q3wzE
	3RCpfPgVGev8rKtzuHGQs6xMl9qMs5u1s549btBXzlfNSwhtdVu5NeLobz+RNgQVpcPPpKAYsWaha
	6vYCUI0hEsLMM56aRRXdfcj6WxyxYO119i+ku+2ROc5EpQoq/v7FmjTO0rQW1JfLhyBY1TeD1hnwz
	9PfWXqYrkMkLJNBpKtFCfMMHY/fRcQ1I9YfcSbwi+oxa97KmAiTk3BQiX+h/DQA+39sO7Ye5o2OHR
	RxPkR05eB9kLbPI+ZsXfr++hKDdraF4ajLLyZnZYKgyGwxYHC3W4oYfTuiuclZjkGqZ5g7cCsmIv0
	oqkGJqInYQ+OOvjkDvEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uthP4-00000004q1N-3HIw;
	Wed, 03 Sep 2025 06:55:34 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uthMQ-00000004oQT-0Pau
	for linux-phy@lists.infradead.org;
	Wed, 03 Sep 2025 06:52:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 444B96023A;
	Wed,  3 Sep 2025 06:52:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6186FC4CEF1;
	Wed,  3 Sep 2025 06:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756882369;
	bh=IYNlG9+JhhkXMMn/spCMJaSa/ZNno14iioZpwVryrHU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ngkjGGEBsvtl/+LflwQESb6V1LZN+yJkVlNCDOTVA0GyzYzoQdyyKlhW8RgWGlkms
	 ciVLeWXY42d3AwISvz0lr7PIEygFWz2Mi+0P/LTQyw8BSaJJBOq4T8PXBtZ7m7EJ6i
	 X5uYTHgj6d+D10i035hepD6QbzyanjMnwfkP5sBwDRKKHeNABP7RG37mCFqZSpjJht
	 4NNXLC2BjXMwqCCPHfVGC82tuTtrxIEeM4UFb5twkKtcTKhaxoELUbSS2PNw7cXGqZ
	 DqsJa9IWJlfr6h0F9ZkLalKpYjx/uUSNvSD9aEi+aoxsakQq45IAUfGI1acCMjkqgW
	 qVF2x/PJ7YdNw==
Date: Wed, 3 Sep 2025 08:52:46 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 1/5] dt-bindings: display: bridge: simple: document
 the Realtek RTD2171 DP-to-HDMI bridge
Message-ID: <20250903-beneficial-logical-silkworm-14f4d2@kuoka>
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
 <20250902-topic-x1e80100-hdmi-v2-1-f4ccf0ef79ab@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250902-topic-x1e80100-hdmi-v2-1-f4ccf0ef79ab@linaro.org>
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

On Tue, Sep 02, 2025 at 11:00:28AM +0200, Neil Armstrong wrote:
> The Realtek RTD2171 chipset is a transparent DisplayPort 1.4 to
> HDMI 2.0 bridge.
> 
> This chipset is usually found in USB-C To HDMI Adapters and Docks,
> or laptops to provide HDMI display output.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
