Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FFCBCA5FF0
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 22:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yUucVo+U000gy/1tZje/iYsYTXpU0ra5c1rCryelx+E=; b=qY+nXxSxndMQoH
	Hbtj7PFoIIPSLPOF4elwlxxJCjU2vKZ6KHfyJ4nZEKxWAEL/BTpg6LOt2Uw0caxAYMDh4s/aSa2Vz
	rFn5Vvsk/CjCYv0nSKBAvLnGz/R0W32pClUpGu+RYmm4zXalSYHPbnhTHK2LxEnK3k57SR3yN8J3i
	qMjwWV0n3ouIzmG33v0hxLpCTITrjeP5mwE75QKQpLF2ptBskYdYVnLLEwZD9IbY040CHNabTj58w
	IEFFKn2wfLEgUNBXXk87doigrj2BDlzKezV3RyzXQWYj5U8jUWdDm76Ae4qOHyLUIHo8cC0nONT2n
	ExyjnkIbje6Pk3zCMlZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDqnE-0000000HEDx-04M4;
	Mon, 05 Oct 2026 22:04:20 +0000
Received: from mail-ej2-x0b.google.com ([2a00:1450:4864:34::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDqnB-0000000HECu-0zIq
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 22:04:18 +0000
Received: by mail-ej2-x0b.google.com with SMTP id a640c23a62f3a-c2e85cec3acso105995466b.0
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 15:04:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791237854; cv=none;
        d=google.com; s=arc-20260327;
        b=ZyCQBhbkUqtKuJC/uGJkvjVWeZHN2nGLxT2I2jtTazePbCsflNPHHAl0/gyBP2T4VF
         cptgQd4c2e/jnotD/1UZ9T16EbpaYYgq1H2mwwsdJqkoFXuCvGmHlHLbS6ChVckuGGpA
         y3K4HikOw5NYGucA8hhMSdu+K5FAMid4201sLzJZJZFgrZ4dHOGlxw489EIHqw09BjxE
         joxdbM60TB0fP7cYt9zzUVqmkZfghzLP848gvK9XvHS9zagsKFMNwLrub5i5g5lBmGt3
         iwe1H42MZkY3FPBQiGxFSLDEQudYvugh/BAdsNzeqvXVN7c7TWd6mUdyq8t7aW4w57kr
         eVvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KCErEo1wEmMk+mf7jU8H4RsXealnJyQ44fgkbs7wqm4=;
        fh=Pc5U7iyVAfcw95G/O6fRDWOqSfo/IwcnjyBoR4RwNhY=;
        b=ruvVHUNszJyflIxeso2hq8mfOy4OT6kpWJS7H1zJS6Ym+iPE0gh2gDAcNGlEbzthDv
         GYLS3YDEMJlg9U6UUcLEmMLYeA52TgnxupUuKCFl7qf/ZeHAviunUUqL7O83SDztbDm/
         YFzxNENWaWcDE4obPKhxlwlq5T715A5jws2Nf4yWuV+P6NSi2Ar7jB683JsPuBtkJO9O
         drrogeg/vOgUf98wJoxsJlW5Vi/0KMEGWxEsm9Ob8iBoch1u1u+J+BvQ9uKt82F1i6mG
         Y+ZR3TXQlidWj7XOGtq3ygGPHScymo1gPLaioO5hSytI+aKBKg2T/nmKrJSVEDamcr8c
         LTpQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791237854; x=1791842654; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=KCErEo1wEmMk+mf7jU8H4RsXealnJyQ44fgkbs7wqm4=;
        b=hPhAu0fqpP81LCNgCEa3GiD2e1AqfDw0dJH/Mrba+OzCVgUMeAQ5FaGIvCq10WpUz2
         WC9t3wkIwXMUhLcCd8DQaK2cL9++tAdwNVARPzlxcqgtRo9oiABKmXb8Duyi2oTOAIrj
         CVcQaV8D7z9nVSemouWOlYU/scx1hqDxVJ7T3Dq+yaWa9HAFPYIg6DI0OqD/GuZ4Fo2D
         DgpXTFj0f7hpw7gUf4BjpD7A+KkYGPiQfTLp5QEIQ8oo2GBk5h+RTSpwCrizD0U+E3l1
         bowttj59kB1teS5eqNcwUsUVqpC8Ds+Daj6v7266w8qDAHpZHpBC09F0vvWH19xgGZCo
         UdhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791237854; x=1791842654;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KCErEo1wEmMk+mf7jU8H4RsXealnJyQ44fgkbs7wqm4=;
        b=EUZrzeBu+s3ciE9VX7oq5weVKacshxTV97ImkJyO0v3q1dGVD/92M81lxnv8iPd3YZ
         H3qugvy4GUgaxkn6f09wppey3JJy/QNxE1iXSGE44SGS58hJwRyVplsVibWI1LN+/Mzd
         rDrPtpmpncqtH2cK1IJqB17ZMLm3rO+bFGuMb3txzbQTGqkT6Y1koYHRwOyvRRsaC7+o
         siDAwYgLQJKlQfXEvwElR3ZRbefuu4y78PbyTvlVdYp45GepYvIsgGqM2PiJ+1K1GH8/
         7RY7CNYjJan3ZAkSA6j2ymoQk10g4hEX/hXGIk1nU/RQmcP6mwszM2U2RUGwlIaEVrIH
         +PMw==
X-Forwarded-Encrypted: i=1; AKwUvBzmNyi3Nq5JJlVMtkaIokB/bibG1UbycdKAgj1x1XlujBh5iC8Bof/JVlUvnl8wvKjfkZz+3zTW54Y=@lists.infradead.org
X-Gm-Message-State: AFuF++mRMAEF47qlTmcanjlveyBjUhDLASk9nz0MP4We6AFDCBTXREMe
	zAxtnZ7cUTISFaqk6hHr8r52gcBsgQGuAyVyzGA83VkcW3gNnDhRFoFB4AFjyjQUBm/P3DJVDWP
	ndb1zwAyq8oMRPGx4KYMgLYHwzbKOtS8=
X-Gm-Gg: AYBFou1XKnTto/8t7eW9+UmoRwCoVobXZpbIWFw2VHMJrYcfyYuqPBryx6mSSXmnekh
	W9Anlyhg9M507vUpLkyjqtjIlfbHwxByZyh34o4PB2Pmc7ae8l+EXhfnqDB5AK6bV/874HcbXSc
	IQOhWPLsdghWfY/RMbClmXzhEx0NB1oFUHFIl/oPhl6oMhZbsUng6nLlDuQwqUnib+vWxWLeW+c
	M6NADvNELmors0dT0v6ez5Op+V4VZHsbgmk4UXa8wayNBlJR7xU+s55w6OSsiGRKLKcJkJtAl+E
	PQc2A/2WmadC1VxyH/AtEpZ2hUHKcDxoUmASI5jLj16dobMMba4L3Ln3/w==
X-Received: by 2002:a17:907:3e29:b0:c2e:19b1:dfe2 with SMTP id
 a640c23a62f3a-c2e4ad3b1cemr1046003766b.23.1791237854529; Mon, 05 Oct 2026
 15:04:14 -0700 (PDT)
MIME-Version: 1.0
References: <20260922200336.2201212-1-coiaprant@gmail.com> <20260922200336.2201212-4-coiaprant@gmail.com>
 <20261005135939.01ccde50@kernel.org> <CALj3r0h7j-4ZAiX67LmbgpmYCvK-Xmzd_qnYYgoBmniAW+eiWw@mail.gmail.com>
 <20261005144432.580daa2f@kernel.org>
In-Reply-To: <20261005144432.580daa2f@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 6 Oct 2026 06:04:02 +0800
X-Gm-Features: AclHuK8_KLwVxsmgUNUhSrq19BEwBKrpkwc4LlinlPX0y7uVYSSqgvZVvQtFu6E
Message-ID: <CALj3r0jNFss4RqdPjJ+NJ=yPRm7zZA0N83T2XxqLuFwoH6iN7g@mail.gmail.com>
Subject: Re: [PATCH net-next v10 03/11] phy: rockchip: naneng-combphy: add
 SGMII MAC selection for RK3568
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_150417_304751_5EE0465C 
X-CRM114-Status: UNSURE (   7.57  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDEw5pyINuaXpeWRqOS6
jCAwNTo0NOWGmemBk++8mgo+Cj4gV2VsbCwgdGhlIHBhdGNoIHNlcmllcyBpcyBhbHJlYWR5IGdl
dHRpbmcgc3R1Y2sgYmVjYXVzZSBvZgo+IGNyb3NzLXN1YnN5c3RlbSBhY2tzLiBEbyB3aGF0IHlv
dSB3aWxsLCBJIGhhdmUgNzAwKyBwYXRjaGVzCj4gdG8gbG9vayBhdCByaWdodCBub3cgOi8KCkhp
IEpha3ViLAoKVW5kZXJzdG9vZC4gSSdsbCBzcGxpdCBpdCBhcyBWaW5vZCBzdWdnZXN0ZWQ6IFBI
WSBiaW5kaW5nK2RyaXZlciB0bwpsaW51eC1waHksIERUUyB0byBsaW51eC1yb2NrY2hpcCwgYW5k
IHJlcG9zdCB0aGUgcmVtYWluaW5nIG5ldC1uZXh0CnBhdGNoZXMgc2VwYXJhdGVseS4KCk9uZSBy
ZXF1ZXN0OiBjb3VsZCB5b3UgcHJpb3JpdGl6ZSBwaWNraW5nIHRoZSBzdG1tYWMgbGlmZXRpbWUg
Zml4CihwYXRjaCAwMSkgaWYgcG9zc2libGU/IEkgd2lsbCBzZW5kIGl0IHNlcGFyYXRlbHkuCgpT
b3JyeSBmb3IgdGhlIG5vaXNlLgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
