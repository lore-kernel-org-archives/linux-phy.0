Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8ECBC55162
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 03:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bfRAYHCLAyVVcLp64CY8Yqiygm9OU71qcD51MPpDs8I=; b=tVuhBUh633FpIt
	yhsYsxF/KzF+G3sZvYpWKpLV2i6H8WGdUqbL9UVQalvw45l11xmME5tHJGowzVUJ5c/lizAw1MwIo
	UM0VsJ9GYw4i6xdU0trRslNfyx8hVb4yd3JskEi6QhMevP97BwA14VImfaKIIm5G5OLD976eY8nHt
	5WGqcHdmJRdM1ctxIi1OQJ4uLG44F9tfXSen6jrloz8aOV55Su82x0LWpPr1DY0jEmISSPPHWtZUT
	eZludx9QPIGUBDImjtPjq2cUMU8OcBnq+O3bqoqZBvg/FVF5gQrYTQqC+8PNy3q3aDsugsNgEu2ZK
	Rpq6DHCMF5C9P8jMZrEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqMsG-0000000FJDF-1oOE;
	Sun, 02 Aug 2026 03:28:28 +0000
Received: from mail-pj2-x04.google.com ([2607:f8b0:4864:39::4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqMsD-0000000FJAR-3uxF
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 03:28:27 +0000
Received: by mail-pj2-x04.google.com with SMTP id d9443c01a7336-2cabf1f1051so5801015ad.0
        for <linux-phy@lists.infradead.org>; Sat, 01 Aug 2026 20:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785641305; x=1786246105; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=TpANIRIXCFEaCO+NoYgeEquheHUazRAsrSjmXdnDLkw=;
        b=H5mpKUwexT3Hx8L4CBH6b1rTFkoaJt1/ARPEcQ3lcjQvxWTz7CLC7qtPs2vtuunSJ6
         LU2YttO9t8lQFHHealSWgrR4Lks2Eo1m5gNU62goFIqiPJ4C/Y97n7rdpJbM2fcnJsiP
         SgM3V4ZP3+UTedukIoHxMwzt3s0FLtYcuNJAka6sV+N9S/LLssuETYqolbbF8Hws3gDx
         gzkAN/zJYEdgKf3i3Le8UJhhjJ+CE2ViZx9tauLluT1wg6UUxLBeLSCcrlPTAEPqkQGp
         hYHTWbrNs473YEQK4SFs5/2G/r005+AsnETWMSd3nUS8FHssEnbFGcOYw0B7TS45jtiZ
         +YRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785641305; x=1786246105;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TpANIRIXCFEaCO+NoYgeEquheHUazRAsrSjmXdnDLkw=;
        b=AxHypzD/9OfcGblSOzBOlLt72qLEaxKWrHGVgw4mMtz0wNClGyo6JiWvpeTUovf1QK
         SFI4uru3iMQo4DQyQnLhB+zqMS7vHxLB+A1HJGpSFzc3cc31TWT142OzhaG25a/2pGvZ
         YTZincGwCjeVSWw50+zpKgbcP37Do+ENWlhrqOV/owy1bcrASZi2tYauBvp+j1hzOdIi
         Wl1GAVHO31I1hGJvQNSpZn1YSuWlfL9kRMMrjkYtPgONMUCMK72WOXern2jg+mN05qzF
         hC78IbFVF0LUE8Q++/sKjPMymioQJNZBKNliNOIZEripzs/oXZpR0oMc8YB+WTkYpgv0
         9gIA==
X-Forwarded-Encrypted: i=1; AHgh+RqF9qpnG4jjHg4DnuV55TfEVpfaHJW4CTQAJxZ/5XYfajkNowvx/jQTUY/YPTviqJ5BF4Ky+66jul4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwfuFS4J0ilppJwScbdYADUxApzi3dW5gZI9KYsoZBoJc0Oq7Cs
	MBxNgq5U/Vu0U2ZK/T4RO50rGT7ZnuqbILn5pKTchGAVSK7NbYjoJwaY
X-Gm-Gg: AR+sD11BJtfeZVE9l8RLYc2DIbLrvVhZXvF3altmPvd5pEKjBAw1T27sK9JMnbyc6bC
	XcbQW3zs+3WaVPbw7hReVQ2B0vTbtx+K74/Elsq08tApNqcUEWHOjTGn5xdqhzhZj/+AALnYWIe
	GpCmmTnTXP+7V6dlZNXm61I9lNJvhtI0KRuBkY9V1DLBTRIvcLq7bDRwbqQx6rhqEDLAtoBJJee
	dFMwl+cPbWj6K+83kl+KnVl+oHp0qDeW8vpUbLN5/XhqYZJP2NCU9BeK42hBV/lhGcxCYfAYniD
	DJxkbVc7TmlGYr7UFaWFkY8Uv4GWT7636PwPujF8X5lr6zSIFYtoU8kyi99eoWYr7NPuXrEmpYe
	oMSJ4GLdI0ab59N2DllP4+a0Yqm7eMhcpArQg7+Pvt6LYcsWy6+PenUwFIEm55GFGR8fjs4JDiJ
	CmW663yscF+vRvQr79zbN8WPNApUv57VtahlF6dRUKNjj2h/LRlxmSJwTIpvlxv+Hpenk=
X-Received: by 2002:a17:902:ea0c:b0:2cf:6f7f:55d8 with SMTP id d9443c01a7336-2d0523f76edmr54404665ad.37.1785641304908;
        Sat, 01 Aug 2026 20:28:24 -0700 (PDT)
Received: from ehlo.thunderbird.net ([103.213.4.16])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d04ae19ba5sm23124875ad.17.2026.08.01.20.28.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Aug 2026 20:28:24 -0700 (PDT)
Date: Sun, 02 Aug 2026 10:51:37 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Romain Gantois <romain.gantois@bootlin.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Shawn Lin <shawn.lin@rock-chips.com>,
 David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-renesas-soc@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v2_03/10=5D_phy=3A_rockchip=3A_naneng-?=
 =?US-ASCII?Q?combphy=3A_add_SGMII_MAC_selection_for_RK3568?=
User-Agent: K-9 Mail for Android
In-Reply-To: <0cf1f734-69d4-471f-aa22-e1a2e7d0341b@lunn.ch>
References: <20260801142244.679437-2-coiaprant@gmail.com> <20260801142244.679437-5-coiaprant@gmail.com> <0cf1f734-69d4-471f-aa22-e1a2e7d0341b@lunn.ch>
Message-ID: <7F609DE6-F3C6-487E-9113-449F5BE05D94@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_202825_996063_440CCE38 
X-CRM114-Status: GOOD (  15.08  )
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

On August 2, 2026 4:58:39 AM GMT+08:00, Andrew Lunn <andrew@lunn.ch> wrote:
>On Sat, Aug 01, 2026 at 10:22:27PM +0800, Coia Prant wrote:
>> On RK3568, the SGMII interface can be routed to either GMAC0 or
>> GMAC1 via the GRF register pipe_sgmii_mac_sel.
>> 
>> Add support for this selection by introducing
>> the "rockchip,sgmii-mac-sel" DT property.
>> 
>> The hardware reset value is GMAC1 (1). If the property is set to 0,
>> the driver routes SGMII to GMAC0; if set to 1 (or omitted), it
>> remains at GMAC1.
>> 
>> This is necessary for boards such as the Ariaboard Photonicat, which
>> uses the SGMII interface connected to GMAC0.
>
>If SGMII is not selected, what MII is used? RGMII?
>
>Can this setting be implied from phy-mode?
>
>	Andrew

Hi Andrew,

If phy-mode is not "sgmii" (e.g., "rgmii" or "rmii"), the GMAC works in
the corresponding mode and this register is not touched. The reset
default (GMAC1) remains, but it has no effect in non-SGMII modes because
the register only controls SGMII signal routing.

Regarding inference from phy-mode: phy-mode = "sgmii" only tells the MAC
driver that the interface is SGMII. It does not specify whether the
SGMII signals are physically routed to GMAC0 or GMAC1 on the board.
That routing is a board-level decision and cannot be derived from any
other DT property.

Also, the PHY (Naneng Combo PHY) is initialized by the XPCS glue driver
(pcs-xpcs-rk), not by the GMAC driver. The PHY driver has no way to know
which GMAC is using it. Making the PHY aware of the MAC ID would require
significant changes to the PHY layer, which is out of scope
for this series.

Therefore, an explicit DT property is the cleanest and most maintainable
way to describe this hardware routing.

Thanks,
Coia

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
