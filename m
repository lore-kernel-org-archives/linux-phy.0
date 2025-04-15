Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C29B8C369B4
	for <linux-phy@archiver.kernel.org>; Tue, 15 Apr 2025 12:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2JJ48LF+A/heWvAoOfDZA26m0WG3gdoB57D9kxb0X4=; b=o4PqX5qJb62hEw
	BRf9XB53r9HBKizcd/O6l9kBoW22NqxeL3SlsiJDe01JpGl8szIVaG+wiJLhzMd+wdFUxv/y1kVwh
	ZAfRjI2OxLLALth5heOv6oU413+Fkq8N1QXqw91rrkec/NkaG5/v79IR8INDH6KrRYdndAgVeWqNg
	OzsMTZ5PagxtiWZsaE9H8hZQVfyDJeQ+kwJwbUaoPYmuwoCVLRhdWjvjWphjNl3pDNxk0Zj5wHHTo
	BDAgeyAGkaR34bwwvRIgv6YIzQc33ur09Pq6lhYgFpV6rd9tK8oPgixWzGaoGBXUQMr9BPtIrv/Rq
	YMpIqH+qzbfXH++72Z3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4fSS-00000005kiE-1KOn;
	Tue, 15 Apr 2025 12:32:08 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4eXp-00000005YvY-1HI4;
	Tue, 15 Apr 2025 11:33:38 +0000
Received: from mxbox3.masterlogin.de (unknown [192.168.10.78])
	by mxout3.routing.net (Postfix) with ESMTP id 4755860DDB;
	Tue, 15 Apr 2025 11:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1744716813;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Wn/K4EMIl2PBfUi2u8eilvhlvKBANZeEcdbvG8VYM2U=;
	b=a2GtEIVXory+IgYl0EmnoCOcxVptYv4o7dG/MwxsKzW/G4mQwgLwN0x4TD010FCxaxF57J
	Gs/NzzX7KKjaV/JadskIj18TqOiPj0DHJBsiCZdPFyxz8lA7t9Uv2EyS88oLSosadxy2lY
	ce6YWG0NW+JzKP1yX7l6o9dRnoKEJWw=
Received: from [127.0.0.1] (fttx-pool-217.61.148.30.bambit.de [217.61.148.30])
	by mxbox3.masterlogin.de (Postfix) with ESMTPSA id 4858136014D;
	Tue, 15 Apr 2025 11:33:32 +0000 (UTC)
Date: Tue, 15 Apr 2025 13:33:34 +0200
From: Frank Wunderlich <linux@fw-web.de>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 frank-w@public-files.de, Chunfeng Yun <chunfeng.yun@mediatek.com>,
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
In-Reply-To: <bbb81e79-95da-4cf9-9eef-7cbaea191ebb@collabora.com>
References: <20250413085806.8544-1-linux@fw-web.de> <20250413085806.8544-4-linux@fw-web.de> <700af1ab-f43e-4583-8f0e-27e5d4424338@collabora.com> <2EA2BDB0-E1C9-49BC-98FC-5048905AA036@public-files.de> <bbb81e79-95da-4cf9-9eef-7cbaea191ebb@collabora.com>
Message-ID: <0B0447D6-0495-4BBA-9F44-8A5191F00377@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 5c3047d5-1951-4654-9899-7fad06ca004b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250415_043337_505267_77D0A0A0 
X-CRM114-Status: UNSURE (   9.73  )
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

Am 15. April 2025 11:59:06 MESZ schrieb AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>:
>Il 15/04/25 11:52, Frank Wunderlich ha scritto:
>> Hi Angelo,
>> 
>> Am 14. April 2025 12:25:23 MESZ schrieb AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>:
>>> Il 13/04/25 10:58, Frank Wunderlich ha scritto:
>>>> From: Frank Wunderlich <frank-w@public-files.de>
>>>> 
>>>> Topmisc is a systemcontroller used for xs-phy and ethernet on  mt7988.
>>>> Add binding for it.
>>> 
>>> That's the wrong binding... check mfd/syscon.yaml :-)
>>> 
>>> P.S.: Is there any reset controller in topmisc? Any clock?
>>>       If yes, syscon.yaml is also wrong, and you need a driver for that.
>>>       Remember: If it turns out *later* that this has clk/resets and the
>>>       bindings are already set for just a syscon, it's gonna be way harder!
>>> 
>>> Cheers,
>>> Angelo
>> 
>> Ok based on the power-domain-cells property i guessed powercontroller is the right place.
>
>power-domain-cells, but without any power domain assignment, so that was wrong :)))
>
>> 
>> But based on your suggestion i tried moving compatible to syscon binding and made dtbs_check here.
>> 
>> I can confirm dropping the unexpected properties reported by syscon binding (power-domain-cells,clock-cells,adress-cells and size-cells) are not needed for function (xsphy and ethernet).
>> 
>> For verifying that there are really no clocks/resets in topmisc (have not found it in public available register documents) i asked mtk (waiting for answer).
>> 
>> Also got it working without the syscon compatible by changing ethernet driver too (after this change xsphy was also working).
>
>Perfect, a bit of a cleanup and you're done, then!

If i do not have to change/merge driver code...and i hope getting response from mtk soon.

>Cheers!
>
>> 
>> Eth:
>> https://github.com/frank-w/BPI-Router-Linux/commit/d866e648717800b6f6395ad36c38f9effcf0498d
>> Xsphy:
>> <https://github.com/frank-w/BPI-Router-Linux/commit/0121a94df99700487704ca056b210b13db07e90c>
>> 
>> regards Frank
>
>
>


regards Frank

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
