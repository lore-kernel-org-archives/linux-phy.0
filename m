Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1B50E9E2FA
	for <linux-phy@archiver.kernel.org>; Wed, 11 Feb 2026 12:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pU+x06BYidgAhI5AXV9+8vtvXwX5KccdwPn9/OIx6sQ=; b=bn+StzhVwqzzzX
	07vZelNgPBiwyZRIoEIDefULrfDQNFak24SXP7KRpqct9Ze/oNbmwfbaIGDf0Cb1sRUObZka4Imw/
	P3pX9/QXCaaoVotCHTsJMWJmpKnpSvZxgj1+Axt32XRzXDgl8S+vjzPu3Og5/5X55gzTNgITTUTN+
	E5G2uHVIRlEWE1B5RDpl+fJ7GBNEXVCJqCRrVwTpXF8hBnAhPBxRnUhSl8JZXQFKCCGndN95kmh7W
	WKeHzm81diGvNIYYTpP7dj2oeM2I1TiDJmdDfQBSBiJL1vqRLAtidUuzzZptodI4Y443RSkQuqdCx
	MOzvRcpdliwn79xAUWNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq9FH-00000000bx5-0XdA;
	Wed, 11 Feb 2026 12:23:03 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq9FE-00000000bwV-017H
	for linux-phy@lists.infradead.org;
	Wed, 11 Feb 2026 12:23:02 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4830f029407so9875265e9.2
        for <linux-phy@lists.infradead.org>; Wed, 11 Feb 2026 04:22:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770812578; x=1771417378; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vJVzdkrFxuD+RMS2UJUYgd6O4St7LRSdDuy0occZDfE=;
        b=MtLHDTdxb1PYLH6ilmQNr3prqKzLJ+bPIBSjDQFMO0KSc+LTrQDptwu4QxYFecp9YN
         aE691MKX37KMz5N5lk8JmAFyfB6iKrVzbRE2oy1m8Yf0eSn6ic+s+rU0CaIU3nfkBTWU
         V5Seu4b58VNSKSrtNSACi6sfulH4l14TVbI0KksTzJ6ffRh6/eCBD1+WSNH5120G3U7Z
         9FOmumQAaG1FSo6Cbe6f/Ic9d/Bc3nVYtHMNTETvQmfO0IeSmMNBLx3ti+gi0r87cAV/
         K9OZ37ZEXROD8i1uvhpsP1yq566+utCNrSvMXlvxZwMFWhXff3O4rwtSEpR14tyGFIh6
         wxHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770812578; x=1771417378;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vJVzdkrFxuD+RMS2UJUYgd6O4St7LRSdDuy0occZDfE=;
        b=JAtFdNGaw6GUGfWHcFDYRKHseQvb/ZFq5MrBm4Wu5WZb3fYfRriquh2eHa5K8Vj7No
         Qm+SoYZOfpd0Lcr6PHgf8oZv/Dv2jjFQFT5MlGXjEYhhRMfaTxwtT8oO85NoEUDI8i3r
         uQv45D4ediA1P+FdL6w0KxoFR1UGQY21oeu/IPNYw+Q9iAwxnvuias7DWyRXRqhBCwFe
         Ie9LMOLn3+9V1gCu9Y6BzpdPwruMPqvpDNNa7XSQRDOmJLj/VTqzZpD73gY0Q7YEPEXw
         qyXpAYDy9KUYiUyKkl22opSWMkws+nl2Q49xzTw3LwiHuAziHdYn/2lRYcXwwQQfH7or
         rK9A==
X-Forwarded-Encrypted: i=1; AJvYcCXsht643OZnGkew8aCNaL1SmLMhKxQjexKk3syujUMzLrxkn6MDWVLR/rFhY2rGFFK9QHavD3zpIfI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwcPNAH6O3ZvS55VBpBWCJ2niPU7j+nlmGuqa4lERmLbwqx+1IC
	IOGSR2rtX/Er3DNNUQauO4VFFAW8t3JBw8Fl6nNhDeV+qo7vO4ZkPD/z
X-Gm-Gg: AZuq6aIUADtuRAOf6q3wMP9R0r8+0cPODxfh+gJau3uPtPs24YTDgLRBVry/MMXgAHy
	x4r0d9Xyl7qHcBbRBSURKIBL49YKWClv/SQvPFmtGUIb7eiCR5Fn9QSbDTJwRG9QNBo2rzZzlU4
	4qNJjyldIaJ6bIwg56y/tuUuR+BE2gg5Fp4D73Nvuadjl1hQ+b/VxOPEnNu4FIP55sJ9SaqW0CL
	MtaZ1jkFi7xoHssxbrfiNJOwHXX/cxm0xEC+r0VnbaY0xb+d8tptnO4fS2pCftWLcHMQzCiIDrO
	DMVM6qH/6WGh2wRFXwMoA61AeEvWW0dQc95RMRYr2R3XewKxYJU/55g5lceMBwHl7DM/DGTjQQk
	xUObo+fQqEc/K975L5vPijidX4EGEg6mXCsZVj/l8jG+uUEkWvIjU6FxbLNNQJIwvUbOhwDNj80
	rDjJXFoT166QG4UyDlB3Y=
X-Received: by 2002:a05:600c:1990:b0:483:ca4:c8ab with SMTP id 5b1f17b1804b1-4835e2ce42cmr16954935e9.6.1770812577765;
        Wed, 11 Feb 2026 04:22:57 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:d8ac:c964:9b43:1b13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43783d4785fsm4100412f8f.11.2026.02.11.04.22.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 04:22:57 -0800 (PST)
Date: Wed, 11 Feb 2026 14:22:54 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH 0/2] phy: microchip: lan966x: Allow to invert N and P
 signals
Message-ID: <20260211122254.4mwzmi5auxddsm5k@skbuf>
References: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
 <20251110114216.r6zdgg4iky7kasut@skbuf>
 <20251111095016.42byrgj33lp4bouo@DEN-DL-M31836.microchip.com>
 <20251113163023.syl6nxq2mqkxpz4z@skbuf>
 <20251114103411.rzigaoictyinmx66@DEN-DL-M31836.microchip.com>
 <20251119192326.4bflaqkh4zvz2rib@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251119192326.4bflaqkh4zvz2rib@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_042301_235475_1451A441 
X-CRM114-Status: GOOD (  10.12  )
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

Hi Horatiu,

On Wed, Nov 19, 2025 at 09:23:26PM +0200, Vladimir Oltean wrote:
> > Anyway I can wait with this patch series until you get your changes in.
> 
> I will keep you copied to the patch set which I hope to send later today.

The generic description I was talking about has been merged as commit
e7556b59ba65 ("phy: add phy_get_rx_polarity() and phy_get_tx_polarity()").
This set should be dropped from Patchwork. You can send a new version
after the merge window closes, or an RFC at any time.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
