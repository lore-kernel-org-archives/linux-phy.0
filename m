Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EBE6CA9EDE
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 17:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ozp0bK1ndauOpZtQGUs5MjuiQby3B2ptQPCzmzmR/nI=; b=Tlm2FvxwAkhY6r
	/+gw4CGbPZrhJJ3nMONNgFqEUReODhoSdtOx2UfOBk/vH6VdCsrQVz5dQ9NPGUblStGvW01uhCzLF
	8696XKdyqCtG+OXB5Tv5Cb0oPUAWT9eXt7QrcvzaHdas9edmyN85BcbDA30jmvZrymATA5x2W3ki5
	TnPc5W99VBsE25ihOysodbUCrNNH0a4xrEL9ER2yMXod3uBNWnUXkpJiTtUrcYoxuqxgJSomEFbJ9
	q+t0+Icb7wgJDx5T3aaotuydMMtdJNzZ6VeD+YfATppcQ3qBYuZ5GG9UDSVxFjllZJkOBFALGuVny
	IuRoLEAAQprdJud55OrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGK47-0000000B8r3-3eEJ;
	Mon, 12 Oct 2026 17:43:59 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGK44-0000000B8p9-3Mcv
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 17:43:58 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-6ab006eb282so2670408a12.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 10:43:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791827035; cv=none;
        d=google.com; s=arc-20260327;
        b=hwXNGIcwRNE85QVC8PiQlBfQaUmdVTi415/jas1qy0jVU7TZeTtuPq1JEhNAvE/ES4
         dsAgcFpjinh7nxplsN8/MnMLl1r+8Fn8Drp2QnEpUI7k1xXS14KNu+iH5CsI7AWLcny0
         KWUFtuiqNpmFKRZ6pxouBfsCYg9PFZrbjkMRY/I7S92MeefQXWa+qy2t//nGj2khhx5n
         /N6dlWrHwZnHvwkpbP2pQB+7ubd00eZaNfHt4CaM/LlizDbwdg4hCjWHuC9u5FqbFTgn
         wtrSDqSRCdWjWedROmkDuQMGRDb59qQpVnJ3brVgXO9WPn1svkaSO9VUZAVWLAw+8kdj
         rIEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aQmNTGROGdvgxfWPGJ1OogqSDxU0dKMs1Ijyj+pgCT8=;
        fh=TYmnomqCqUVCCDvrLDKn+xCW5m0AoF2p/N5Uj0rWIIM=;
        b=fJpG5vcQa6fQ/gJBDV2t/sr09eHteV3kPsiUKjiPbc113My0P0Mowopr/821vCqRV+
         l03ehOcoTmsg6DWQ+YOtmskt3YXBVD1DXVaaMLExwq0fMp0VeddTEfaqJ1dmHU2/dHzV
         1zeU29WPD/U3Md5VgH5ks3rlSZFb2XKUfn43SAgtkfoRWWNiCjR2efgVYfFoE+9wiGKx
         Zut+q+Y0SPNFS2/keaY9qEGiWmjPZ2jVVEAzuTKq0BJ56Okt7+Xpw5cm5+gmHvkDXBjs
         b0Ypcu6uyiJLBs9rgEeFBOcchsrXWUF4gy1l+ggbBqITxCQ+IRl3u99TWT1IiX6bXJov
         RNKQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791827035; x=1792431835; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aQmNTGROGdvgxfWPGJ1OogqSDxU0dKMs1Ijyj+pgCT8=;
        b=r5pqoxkgDMpNNApP+YitL2xWGnQm7iFZgg06hXWmqgkr11mpVkoa7LZS2gKuqPX1sk
         hQUXIXsT95hHIEDYpLZ9ILTnIWd3V3x+ekNdYJRy2O+3TTAD55NJD8bnFvQd5I1kC7N/
         REhBqRoA9Kbuje77A+F6Ig7XXdkZoP8IEUj/+HCafdm8KzTeD/1JRjTw2kKYDRZjDIgT
         fI/ovDwZoTwXIBSPzRuN4dxye/bYGDtomJdEmRviObcZAGYMkMHY4+pRw68i3oBrO7VR
         IZr03HX/CVdUKuv64sQ0UHDQ/B5IU7623frLMbyO5PxUvpDs7+WDj9kZ3cBc9VYIsrxd
         rXEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791827035; x=1792431835;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=aQmNTGROGdvgxfWPGJ1OogqSDxU0dKMs1Ijyj+pgCT8=;
        b=dQv0jp4b+cRcDQaHIIo2lxjj/4Ig+WY/PHoqa5XM1+GYBADGUkN0mua6H2HueW4iUL
         3DCl4MQEdYXKsgRx+Izi7D8zTFAmu46usXmsxPIqWeunXrzratteM4pI8Qzj8d8cI5tX
         +Rlem+cKkmpfQIRI35XF4uX4Xi1VignU1meR/y4FC+4TcqOZwyQ2qvxV0m7GM6u3zcJR
         yvRcl8oQcXPH+MKRfycInBkBX6i7uQixKT38jI54hIlVTQQ7s8ZGeVQGdg9Ehq+5CO/L
         pupyFTLp/V8fhRimFpkj2doeW73DOM4HC+LVNeGulk0GGYTkj7q1CBeJRuhbPu3rbpPi
         UQxw==
X-Forwarded-Encrypted: i=1; AKwUvByQ4Lmg4rTnuKP59a3ZBHZhDUBh0jH9LZ23pro9eK+xIpv1d0OMUsCJa6sZXAFU7cmG/oeXUq64t4Y=@lists.infradead.org
X-Gm-Message-State: AFq9FYLokGXu+fJTbZpR7YINz2AfB2N5xtScfVeabqCrIkkcNxIGhZ8C
	4v5dCiIkfvBeBGYrglWgWrqBp1uND5+Kt4xrx/CSHW/428oho32tp9RZFHTMILdm4UGhHIU50wz
	qlawCAoar37g6ekeJ92vW7MoPkD19aT4=
X-Gm-Gg: AYBFou0bmSijGPyafK/EEwqRYRzs+vK2uUsCYpM/RrLeanSLY6AS3DGKCwVHpSkK1np
	9HM54NEoG1Idl72jy8VsyOyjUTNKL8bjp7RG47dOz8DKSbNFaIt5xPKbtVdMk36RJhsJV+j9ZMR
	kZs1Qaoning6qLVVg2nFCFMzXZIX0/F5YNPGz9M+oUkQ9dj/69PrhcWr6SKlMex7wh9TnfvOgnP
	7xsMy6G+dclt3MfEi5dA+1vLPGYt6Hyt4k41Uc6fJLjjWnKXMsewGKLHrspi9jYBS4IRkn021B8
	XpXbbjvPCRlsOIeJLWJm7Tl8W41s3c5laeLIpRzka/2QeeZP0617nA==
X-Received: by 2002:a05:6402:4341:b0:6ac:8761:17a1 with SMTP id
 4fb4d7f45d1cf-6b17c27a7famr8072014a12.36.1791827034421; Mon, 12 Oct 2026
 10:43:54 -0700 (PDT)
MIME-Version: 1.0
References: <20261010115539.9237-1-l.scorcia@gmail.com> <20261010115539.9237-2-l.scorcia@gmail.com>
 <20261012-quirky-emu-of-renovation-c217dc@quoll>
In-Reply-To: <20261012-quirky-emu-of-renovation-c217dc@quoll>
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Date: Mon, 12 Oct 2026 19:43:42 +0200
X-Gm-Features: AclHuK-aSGZTx-4HZF0vtpTq6BBo_BN-ay9Tv6iz0b611lBgirjVShAwSUrYMCA
Message-ID: <CAORyz2KgX-7=gfax06+Pb5SFq4dVTtcTY2pbH+FDCRNZ+AVXOA@mail.gmail.com>
Subject: Re: [PATCH 1/7] dt-bindings: mediatek: hdmi-phy: Add compatible for mt8167
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-mediatek@lists.infradead.org, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Stephen Boyd <sboyd@kernel.org>, 
	Brian Masney <bmasney+clk@redhat.com>, Jerome Brunet <jbrunet+clk@baylibre.com>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Chen-Yu Tsai <wenst@chromium.org>, 
	Fabien Parent <fparent@baylibre.com>, CK Hu <ck.hu@mediatek.com>, 
	chunhui dai <chunhui.dai@mediatek.com>, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_104356_856148_96277D7C 
X-CRM114-Status: UNSURE (   9.52  )
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

> Why do you have flexible clocks?

Hi, I'm sorry but I need a little help in understanding your comment.
If you meant "Why isn't there a constraint on the clocks' names", it
is already provided by the existing conditional block [1].

If you meant "Why does clock-output-names have only the maxItems
number and does not specify the clock name", it was there before [2].
It could probably be added back with another conditional expression.
If you meant something else entirely I apologize and would appreciate
some additional guidance.

Thank you,
Luca

[1] https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bindings/phy/mediatek%2Chdmi-phy.yaml#L90-L102
[2] https://lore.kernel.org/all/20251217-mtk-genio-evk-hdmi-support-v2-1-a994976bb39a@collabora.com/

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
