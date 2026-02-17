Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5551E6814E
	for <linux-phy@archiver.kernel.org>; Tue, 17 Feb 2026 09:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Weq/PUoRagW+P1Z8f1axxqVsDhELdAJCEulme9JjEo=; b=oBVrXMgmRIZWXZ
	+Ls+bmblgi+ZNCDAgAE+AB+NthHaZBmPVjr6KowyzIfUXIAVa9JT2DBtsKITbB8LPm8LZHUmEavzn
	UvDzpR1sap9mZzW96zo7kYVhcePDC+xLxXnZ8ivqzMOFi4YK2sFKoEYY+cBR27RZi4Ds3Lj9xbfOr
	L33YEHL0/tHhPrjgHV/FGpR7Pv9ZhszHwnJ1O4fgjHWgcVlpxAj516w/B2alN9g3nyGaN2L4AJyI9
	B9WCJ1rWScwGAd3hOBFWGkR79pP/iGus0iPaqN9kWdN0Nkq3rLXEbt5aVCE1inqf10tQR13IJNRqc
	kZnz5KrvX3QfEZ2QbjfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsGzZ-00000007tj2-0fqN;
	Tue, 17 Feb 2026 09:03:37 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsGzV-00000007thb-1KcN;
	Tue, 17 Feb 2026 09:03:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771319008;
	bh=9GbJRlEzOKhvUfPYVZkq7x2pTPJxlFsurchmoJs+GK4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CtfYHGR2qb6+VbmtAWTPsiAJVFmA0YWByKmTGWIgnyD7Gr1gBMN2y/7VQg2FJHKYj
	 SSEPSuC2goNPL+OBycqn7GTaBjGkWc6e9RRUo6zIiy5EXHHCZWf9z2zvuZuC8OipRa
	 9v8sgckzmoMj0cSVLVheSHYY+qj1qhxVTkd37GJirm06XMd5TRPaJy9OzHWF3gWP32
	 GcvC7wYo72tXDlePRa4lJZWYeUspU+ZGT9rV7kloqL1h59Bb5gXI1axSuLKG0GKV04
	 IwM8VMAiR/Ynm9rtP8lWKYok+PVG6V6jhEGGhzu5G9BQncbySjGW5b0i+H16X4pncK
	 wp7T3YvEscqVQ==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E9D3717E0C21;
	Tue, 17 Feb 2026 10:03:27 +0100 (CET)
Message-ID: <04a3d18b-80cc-4d1d-8657-cb35c4b5b797@collabora.com>
Date: Tue, 17 Feb 2026 10:03:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] dt-bindings: display: mediatek: Correct
 compatibility for mt8167-dsi
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: linux-mediatek@lists.infradead.org,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jitao Shi
 <jitao.shi@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org
References: <cover.1771258407.git.l.scorcia@gmail.com>
 <ff920a7cc94f2b0c03d4bb55142030fded30d07c.1771258407.git.l.scorcia@gmail.com>
 <20260217-stereotyped-dazzling-loon-f06e18@quoll>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260217-stereotyped-dazzling-loon-f06e18@quoll>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260217_010333_575134_1A09026B 
X-CRM114-Status: GOOD (  31.97  )
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

Il 17/02/26 08:58, Krzysztof Kozlowski ha scritto:
> On Mon, Feb 16, 2026 at 04:22:14PM +0000, Luca Leonardo Scorcia wrote:
>> Remove the dedicated "mediatek,mt8167-dsi" compatible from the device list and
>> describe it as compatible with mt2701 instead. It is safe to do so because:
> 
> You are not doing what you wrote. The dedicated mediatek,mt8167-dsi is
> still there.
 >
> And if you want to describe mediatek,mt8167-dsi with OTHER
> compatible (mt2701), it is a NAK. It is wrong and not allowed by writing
> bindings doc.

Sorry, that was my apparently very-bad advice - and I recognize that, as a
maintainer, I should have given different advices.

Still, check below the (bad, and not enough) reasons why I said that....

> 
> You just added fallback, didn't you?
> 
> Please wrap commit message according to Linux coding style / submission
> process (neither too early nor over the limit):
> https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597
> 
> Please run scripts/checkpatch.pl on the patches and fix reported
> warnings. After that, run also 'scripts/checkpatch.pl --strict' on the
> patches and (probably) fix more warnings. Some warnings can be ignored,
> especially from --strict run, but the code here looks like it needs a
> fix. Feel free to get in touch if the warning is not clear.
> 
>>
>> - Bootloader doesn't rely on this single compatible; and
> 
> Does not matter. You still CANNOT remove a compatible. If bootloader
> starts to rely on this single compatible, you add it back? No.
> 

The issue here is that "mediatek,mt8167-dsi" was never used anywhere, and that
alone makes zero sense as it is - by hardware - identical to mt2701.

That, leaving alone the fact that nothing anywhere can make use of a node with
just `compatible = "mediatek,mt8167-dsi"`.

If it is not acceptable to remove something that was never used and should've never
been there "alone" without fallbacks, it's ok. I'm sure that avoiding to delete the
one line is not a big deal there.
Also remember that we are talking about an old SoC that will never see a bootchain
overhaul, nor will it see new bootloaders.

Though, just a small note - please please please: when we see new contributors,
especially when they're community ones, can we try and encourage them to do the
right things, and follow the right processes, without being harsh in any way?

And P.S.: Yeah I know you haven't been as harsh as you can (rightfully) be, so
thanks for that.

Luca, I'm sorry again, at this point - it would be great if you could please send
a v3 without the removal of that line. Just add the fallback and that's it :-)

>> - There was never any upstreamed devicetree using this single compatible; and
>> - The MT8167 DSI Controller is fully compatible with the one found in MT2701.
>>
>> Fixes: 8867c4b39361 ("dt-bindings: display: mediatek: dsi: add documentation for MT8167 SoC")
>>
> 
> There is never a blank line between tags.

Yeah, agreed.

Cheers,
Angelo

> 
>> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
>> ---
>>   .../devicetree/bindings/display/mediatek/mediatek,dsi.yaml   | 5 ++++-
>>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> Best regards,
> Krzysztof
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
