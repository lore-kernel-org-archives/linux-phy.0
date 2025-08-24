Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF56DCA0EFC
	for <linux-phy@archiver.kernel.org>; Sun, 24 Aug 2025 06:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PtrK4eySMj+sJcj5kyv8JIpmTiD6ZYipVEWR1rQdO30=; b=S2BLi8IsWcvWBb
	PQGuSSeOW8Xopjg1YhodEp5tQW/+V7oSwscBpV6k/tz2473iwWqolCC3YE4vPOE6TGXU2aAN09hNF
	NneMNKIssGXcPOuhX9erItPQp+HhEsAaFg6GuTzAJ8o3uZpbNK8V2wJng9GIHQ+TJ3hISfXK6rdEC
	M8Czq7d+Vse8sfMlvBC4lNn50QvOe923BwoSZyx7sc+mhiOPcsgxhZJ+Mpvh9WU+Pkfa7IgQdMBHs
	23Wcioe3aRi7uETChFASV+Y7HWRGZNp+530RSmgd90hNTEkNPBKLxAXdo0muAPMaFWLOlKqv1rPmY
	hvI5TYAh9MVgislmrHyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq4FZ-00000005m3P-11hX;
	Sun, 24 Aug 2025 06:30:45 +0000
Received: from mail.adomerle.pw ([185.125.100.172])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq4BE-00000005lpb-0JGT;
	Sun, 24 Aug 2025 06:26:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; s=202506r; d=adomerle.pw; c=relaxed/relaxed;
	h=From:To:Subject:Date:Message-ID; t=1756016758; bh=BuLN7x9nhSvGMNIfHWMLb/X
	TLbgUL01zpnHuUy4VHko=; b=V0h69TQMBju8848JG9r/KT95nNI/nsVGLpj2QO6Y6KWFnc3hoM
	9tMRwTMOff43dUrhGOA0dbD6PtKc21p5W5PxUdpkYhSAZAzk8E9YFwNL9zsKvpGutkf467Xo3u2
	TpxHdZZL3gYIWTzJD02QIDv1mvxxsNo4uMh9BK7PexBQFhpSwTsCwCV38JHDYak9DqPtN96m/NO
	oQv/bDt6c7d3gfoqp5hcAg7LyCtXrjkqIilFTr3xheSBDlOmXjfyYO5FQQxnZH6hZ2I9e7HZ43+
	ZgUTHjG+szlw19+SGDK4Pj4i6XJLVG0/SATpdaUYs/zHAYLDN/cvmcdTTvGMIdGBPeQ==;
DKIM-Signature: v=1; a=ed25519-sha256; s=202506e; d=adomerle.pw; c=relaxed/relaxed;
	h=From:To:Subject:Date:Message-ID; t=1756016758; bh=BuLN7x9nhSvGMNIfHWMLb/X
	TLbgUL01zpnHuUy4VHko=; b=ZJvQ/Yw0N3qYSsvJcCKBj3EgIuNJgk7GEHWq93sVfgMf3oJyKx
	mpUE5cXAjEkAJ0WlvX+avXWn2wOgFKLHPIAQ==;
Message-ID: <ce4f990c-c336-4aa4-93b0-7b9f4d9663b4@adomerle.pw>
Date: Sun, 24 Aug 2025 10:25:56 +0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] dt-bindings: phy: mtk-tphy: add property for
 software role switch
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20250814234825.810-1-me@adomerle.pw>
 <20250815-important-warm-dove-03dde5@kuoka>
Content-Language: en-US
From: Arseniy Velikanov <me@adomerle.pw>
In-Reply-To: <20250815-important-warm-dove-03dde5@kuoka>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250823_232616_263120_FED9EF92 
X-CRM114-Status: GOOD (  11.55  )
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

On 15.08.2025 10:28, Krzysztof Kozlowski wrote:
> On Fri, Aug 15, 2025 at 03:48:24AM +0400, Arseniy Velikanov wrote:
>> Add a boolean property to enable software control of the PHY mode
>> switching.
>>
>> Signed-off-by: Arseniy Velikanov <me@adomerle.pw>
>> ---
>>   Documentation/devicetree/bindings/phy/mediatek,tphy.yaml | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
>> index b2218c151939..a90890d4a86f 100644
>> --- a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
>> @@ -255,6 +255,12 @@ patternProperties:
>>             use the property "mediatek,syscon-type" for newer SoCs that support it.
>>           type: boolean
>>   
>> +      mediatek,software-role-switch:
> 
> No, bindings do not describe software.
Sorry, I didn't quite understand you.

With this property the driver changes phy mode manually using debug regs 
instead of configuring hardware mode switching (because it's broken on 
some platforms). So every time the role in usb-role-switch changes, it 
has to switch phy mode. That's what I mean by "software".

I can rename this property to `mediatek,force-mode-switch` if that's a 
issue.

> 
> Also, never tested.
> 
> Best regards,
> Krzysztof

-- 
Kind regards,
Arseniy.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
