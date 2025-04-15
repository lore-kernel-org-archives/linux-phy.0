Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 479FAC369AB
	for <linux-phy@archiver.kernel.org>; Tue, 15 Apr 2025 10:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:
	References:In-Reply-To:Subject:CC:To:From:Date:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yn0PedVRDR9vnDSZLyqa606exw+iQyXh88AztN2BaSQ=; b=CW35FEI5fR2msO
	nyvtvR7iUGLDeaej8zE6FG6quLoMaqa4Br0k0oRtdWDPG6mtEtcOXdG03FTY1LwjL3qDBhj/fqbBt
	YIHpxxQ/XzAKJGslBa49qSaW7LcbtdRbr+XswKByu1lngVDCIfX5SqmMFa9w3SCewhSuZOaGGc/6v
	Rblp6QEcBW0u7QSV6dRekjj2kl2wsjdnIhId4M8x/cIxoSzQCnJR1Se5fA0bNE+WYavw1hL2XxxCd
	IUX4Kjp3tw5CGm8FDXQUxQo6QoaqxX1w2dlsaBmCwtaeN1Sgso2MbTdPwIhtQWvcTmQEFTfz5olne
	ozvYLHNPTCyb+Ig14zNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4dEL-00000005HCw-3N5x;
	Tue, 15 Apr 2025 10:09:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4cxw-00000005DUP-3Ylu;
	Tue, 15 Apr 2025 09:52:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Message-ID:References:In-Reply-To:Reply-to:Subject:CC:To:From:
	Date:Sender:Content-ID:Content-Description;
	bh=Q+JckBEpsrRgqh5xztZTHuIFUl86FPQgA/jK6oZPRJI=; b=puhrsH64UOH7gBdx9FyroNJmSB
	J3CrOo6B2YckL8oOKPHK0yC7Skq0VETi4LtXR47nB3E0+89uaZtLzELkQ8Jcw5nmZ6s4+wJO4Nmjl
	ub2YNhGnzJMeQtjlcI8poRVrUirc++asVTR59FckuilYOm6eFOOutVb2G216Hun9xjFbWCjslN4gC
	/vvv1ixg8XtZpZZ8KDP7wWI5Jif7+//LuQaxmZObpVMfax0gLDrrqdR1pqsMJ7lw3k4H8Fys/DWxA
	3oNjfdeaAu979xNk2ez6oAEKs9XaxjDaXc4bzrZNs/J1Ix6INl0pT8w0xjXIJ9wEEbU9H/jHWGxb7
	7BpnZ54w==;
Received: from mout.gmx.net ([212.227.15.19])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u4cxs-00000009qeM-2Tng;
	Tue, 15 Apr 2025 09:52:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=public-files.de;
	s=s31663417; t=1744710739; x=1745315539; i=frank-w@public-files.de;
	bh=Q+JckBEpsrRgqh5xztZTHuIFUl86FPQgA/jK6oZPRJI=;
	h=X-UI-Sender-Class:Date:From:To:CC:Subject:Reply-to:In-Reply-To:
	 References:Message-ID:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=bLhOgagtIW/xrGe5Nq/eT10+fZL8R9146+562WV+19hEvp0m7LLIPpLGoQOaaZHO
	 0exsQBy34S+clURVRsFvn72m0tvnPd3HWlwkv2sNYgJ9MKSDYaP45u+oRCzNA8YXI
	 nHHCj5z9JdXGda+7Fhjgf4V7dWD6pwzccFQ6DXScBl1gBV66l5U25iBbohq7/wopV
	 kq8h3eSBqOiQfGPwTTdpn1DFUI6+1QbKv4DY12M5RRM2Q+HWKypRGIltIliw8T7xp
	 1rlbboCruan5kxl3GsRUMzk3IROhb+9XbMM1XPB3/5RnMSQi/WAy81AQPlsc5frQQ
	 pnEc9YdM80A9d08pQQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [127.0.0.1] ([217.61.148.30]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MK3Rs-1tjEjN2Nri-00WfPz; Tue, 15
 Apr 2025 11:52:19 +0200
Date: Tue, 15 Apr 2025 11:52:19 +0200
From: Frank Wunderlich <frank-w@public-files.de>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Frank Wunderlich <linux@fw-web.de>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
CC: Daniel Golle <daniel@makrotopia.org>, Sam Shih <sam.shih@mediatek.com>,
 MandyJH Liu <mandyjh.liu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BRFC_3/5=5D_dt-bindings=3A_power=3A_Add_binding?=
 =?US-ASCII?Q?_for_MediaTek_MT7988_topmisc_power_controller?=
User-Agent: K-9 Mail for Android
In-Reply-To: <700af1ab-f43e-4583-8f0e-27e5d4424338@collabora.com>
References: <20250413085806.8544-1-linux@fw-web.de> <20250413085806.8544-4-linux@fw-web.de> <700af1ab-f43e-4583-8f0e-27e5d4424338@collabora.com>
Message-ID: <2EA2BDB0-E1C9-49BC-98FC-5048905AA036@public-files.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:MDFMwq9Ryka5EQJIRTUvtko9P8AePKbzPUmE9xDrQQAss83aXKG
 STQ21SuCC3A5uykYtRZaAicAhA1RltYfOdeAToH7BRl+YKP3qTUx0a6e4kSZJLqAI9f3JhH
 mmHa9PT41UQI4sFR00UU7pvbVse2JVC0ngcXy0evqylC+5T+BVSCrJSZaPfuYBNICBOCFvc
 9JesmxM19WSuIqrNJAuig==
UI-OutboundReport: notjunk:1;M01:P0:VK/pb+WoYXA=;bPDdGMYPFqQHNaVWNdlgFR7Fp8y
 rWQIkRE4B0iktDbhYZVOJ/v+gBRvcvY/3aV9Wha4vYf2j0y/nv6MBybsVgCLw/KbEmhUFN+EC
 miXg2SbKxGRQYeQoiJJmcq3Jgt51pe5Iqdix7p3Dw59AJhcYlwGpMkzomNa3nrXNWJDOgfOeW
 V01cIc1eZbqLgU3mCtfzWvVTCdb0Vdb9WvctQ2b7NlkoFBRNZf/EKpMZ0iPSyM0sxfx+Tzjcr
 KxUi06ed7sJBrAg3JGFYyfPFnNGBbjqaaSEhaawnu2xaF9ED0bXwS9gEcvBKH1v1Fz6JHQKn8
 BQzFd8lPgYKYP++r4ZPip1MJhfP5z6Il6IfZgmkaCkFosHYHDE8nikNQFCRnpl1gJ4hGGNf6Q
 8gQYev9dAz+1G0a2YviaQAaGVAVXj2iqUXX/nCtvTUKB+dO6LHGEB6VSGV/4La3anEZWfFFMs
 fN7yana8+8OUlMDV+WmGHlDZHvXB4F5B/Z6NwMjJ9hxWm9W94O8U+UxpR+w8nJO7k4ngJc3/g
 1+0IHh54E7Z56ZWhWaOlDvT44ur47m4t9pkjRffWkmNbnKejJu3SzoZ7fBTVkquCPdtkXK3Po
 ds4Y2phhrjfoonw741eFyci8ZxTo4RnVXouL6WDf8lPAHo1w1tr1tsJwkx0iDHjRzkEVZ4VHB
 B859Os0XrOCUTHnWupGSNKMhUoYBO2sxBXTv8cWCZFNaJbw2PbVSIEzSCvVPdhllmAXIRa1y2
 SSoJfBx9zFiLHbSxYK0bh2U0MqcogQ3+HM8sfvX5Nt3ltmviqw/x8+bTaRayOc72BdMGIwgA+
 KSFEvM6mtwtmv4AR/WVQx87VcEkk4BbuUOge/fxXMx5MIAAzUJYmu0/TjHzqchOmdYwsKbs1/
 SkeXC01UCbo8//5K4kdSnF7Y1i29xHLT1m/XzjXjcV7XtVzt2Qgs/BoAs35wVJ+VxKBpZM4YR
 MCenaYaG+lCQ/lFcN0T0Yvq5NM+Q9BLN1xSgcJeY2Jy83rs3bWA/LdgvXcVifRlrIqCWyB0b1
 OVA2v2pstzt2XYbGbjyfr7M0qcIf44KofgGOZFhf1gpOEemS6ocydFx3zoCk1bAPzowZ8gpgi
 t6eIUjG9sn8zBDoy/hWN9XdI3/4ULnfoXWZk9kBh9Xvini4EtbEcc0elP3kJokaVoKomC0t/y
 xwX72h+Pl50fFFvyu5sgKINi4DL6LmF3XBALJ+7xN/aUD3FcIa0EilzBLOQME3cCtZhgK1SjV
 W3+ALpBPt4DJ7o3eIBmrvOApT3W7qR5P/2dse8rSNipSBhYExhPlf5QyNpY6vAiPCCH59KkNk
 a3c3KYko2/Ln0PVgJf14fKP/85eO6Cs1mkFc1mq8fxxUs64kKZOkNNkXSfYGJfo5TKJHrqXHq
 1+EwjzhS91yh/KUqfzxpURFlVfsKa/dOiWxElJF0RIaQON+l4o4bxXXtzm5prRmXLCheCmEKL
 //Dmaufb4GZf9Zbp0NzkLsYdERI/JEmzLGHHvJ08LpZAQEaj2O+seThgZ6keyZBvTytMRSS6O
 jjmEHWUwYJ9+s2qCwJc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250415_105224_957368_286298CA 
X-CRM114-Status: UNSURE (   8.26  )
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
Reply-To: frank-w@public-files.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Angelo,

Am 14. April 2025 12:25:23 MESZ schrieb AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>:
>Il 13/04/25 10:58, Frank Wunderlich ha scritto:
>> From: Frank Wunderlich <frank-w@public-files.de>
>> 
>> Topmisc is a systemcontroller used for xs-phy and ethernet on  mt7988.
>> Add binding for it.
>
>That's the wrong binding... check mfd/syscon.yaml :-)
>
>P.S.: Is there any reset controller in topmisc? Any clock?
>      If yes, syscon.yaml is also wrong, and you need a driver for that.
>      Remember: If it turns out *later* that this has clk/resets and the
>      bindings are already set for just a syscon, it's gonna be way harder!
>
>Cheers,
>Angelo

Ok based on the power-domain-cells property i guessed powercontroller is the right place.

But based on your suggestion i tried moving compatible to syscon binding and made dtbs_check here.

I can confirm dropping the unexpected properties reported by syscon binding (power-domain-cells,clock-cells,adress-cells and size-cells) are not needed for function (xsphy and ethernet).

For verifying that there are really no clocks/resets in topmisc (have not found it in public available register documents) i asked mtk (waiting for answer).

Also got it working without the syscon compatible by changing ethernet driver too (after this change xsphy was also working).

Eth:
https://github.com/frank-w/BPI-Router-Linux/commit/d866e648717800b6f6395ad36c38f9effcf0498d
Xsphy:
<https://github.com/frank-w/BPI-Router-Linux/commit/0121a94df99700487704ca056b210b13db07e90c>

regards Frank

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
