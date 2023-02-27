Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F323C7EE2E
	for <linux-phy@archiver.kernel.org>; Mon, 27 Feb 2023 13:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=432UBYdIP9yfGYAThI2WC7nXX7K7dBWgEw3tEyGNeUA=; b=Mthw52IXC/3UjV
	3wGOSS25rIT+IOw0SQmac+I2oXnqKGPyEojsIHeiXXdxQL6MXBVd98FqoBQfaOXhbf0uucyVI6u+u
	yb1qedUzQPgMN36z/vsce/BVCC7KKmuQY5nl/gbgSdy6ceaRqqgKwy48QxqLOetlxG7Kx14rI7tIQ
	eI0ztlyR+i8Cyt0wetwIcxryIMUlMBgizTKkDP6MWk2H53/m8s8o6zg3uCEa/ceCEmaqiLnbxVJy5
	LCcqk6lWaYkfVnOKRy8tAmY5mVcg/XlMEoxa3Dxzl4tr/pAkhz2uTnspG/gS2DxVAdLZnDH+GomZG
	WnlH5DN83BGpR54hkQCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWdck-009lxf-My; Mon, 27 Feb 2023 13:33:02 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWdcf-009lwS-Ly
	for linux-phy@lists.infradead.org; Mon, 27 Feb 2023 13:32:59 +0000
Received: by mail-pl1-x62d.google.com with SMTP id i10so6671795plr.9
        for <linux-phy@lists.infradead.org>; Mon, 27 Feb 2023 05:32:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=URqe1dE6GDBSL5K5ua0uDBAeYqEkfW5tE/SYJGuf82k=;
        b=PkMX2eaV/wlZmoA2f7yuF/Ra7MJy1jAaZT4S/fDagDYogeDasuZ3BFjIyRu0zm7x0c
         2pPlxI0hxZWnsTx0RjwaGA8YRdpxI3MuVbxWGbSj6kCUaozZ7yHsXc49l51G2bPAq0gZ
         3zsmdI2q8QB+wy0gUnJ3d7hpjNBiOrkyS3TmF2cWzBiCPXXIqYDsdI+gTTmPl6ZHGDIt
         +AAB29AlsBwcyh3tNtr2cPMf5AtZYPiG5/Eas9Xn620NoZLqldG1SrgORz6PCluTAmrs
         xHSKrMiv9zmATs4ATLXsSFES61Yn9C2DPtwpjNjUzom1QKizcFD4blU0CmQkg3jnvQcK
         mVIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=URqe1dE6GDBSL5K5ua0uDBAeYqEkfW5tE/SYJGuf82k=;
        b=5fFVcwhj9a/q486JLvzNEL2/M7JCkyEHojLaWFcrI5yP1IuxVg2HEyscaSHwUlw/1L
         tMg9ehF9HWbLqEL+pM9Q3IA++U566Q3HmgPpGx4EfIxs0T78pdbZw2Mjdc/tg6AcMvZf
         Ewv0WYkjiPesbjzRx06FJJNitEeb6NdnAOhOKLTt1CMUZ9ozMwcfALr7foIADoslvc58
         L1Vl5Quqpru4iHMLsMNdJVBwG/SHBCt8yV4ILbPpI+iCBQHDJx7liSOh7JZFxUVO3n6K
         hhIoQSmEuvA/O6wrEtFQsE0n2oZ2FTkYo0MX9YQevnoCsI4oCG1pjAgAS8RGEAZv469i
         rTxQ==
X-Gm-Message-State: AO0yUKX4r1KGwcHttvWot3B0/MPGw5Z+e2XNwVMJPaXXKsYF3S/0wgEj
	xkWu7yAyb5mqx88HlhRhyQuO
X-Google-Smtp-Source: AK7set/e+a2DpEFO/UgnY5ozJ1GeqDmYcpR84mWWJJPHxN9/B6VO9HajCRnMjQAz6FOHPiW3MI/LdQ==
X-Received: by 2002:a05:6a20:4b1c:b0:cd:36a3:3beb with SMTP id fp28-20020a056a204b1c00b000cd36a33bebmr3479100pzb.30.1677504774385;
        Mon, 27 Feb 2023 05:32:54 -0800 (PST)
Received: from thinkpad ([117.202.191.60])
        by smtp.gmail.com with ESMTPSA id x26-20020aa784da000000b005a8f1187112sm4239936pfn.58.2023.02.27.05.32.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Feb 2023 05:32:52 -0800 (PST)
Date: Mon, 27 Feb 2023 19:02:41 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: helgaas@kernel.org, linux-pci@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	mka@chromium.org, quic_vbadigan@quicinc.com,
	quic_hemantk@quicinc.com, quic_nitegupt@quicinc.com,
	quic_skananth@quicinc.com, quic_ramkri@quicinc.com,
	swboyd@chromium.org, dmitry.baryshkov@linaro.org,
	svarbanov@mm-sol.com, agross@kernel.org, andersson@kernel.org,
	konrad.dybcio@somainline.org, lpieralisi@kernel.org,
	robh@kernel.org, kw@linux.com, bhelgaas@google.com,
	linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@ti.com,
	mturquette@baylibre.com, linux-clk@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Subject: Re: [PATCH V1] arm64:dts:qcom:sc7280: mark memory of PCIe as cache
 coherent
Message-ID: <20230227133241.GA3647@thinkpad>
References: <1677490575-29092-1-git-send-email-quic_krichai@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1677490575-29092-1-git-send-email-quic_krichai@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230227_053257_877500_0896B84F 
X-CRM114-Status: GOOD (  15.75  )
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

UGxlYXNlIGZpeCB0aGUgc3ViamVjdCBhczoKCmFybTY0OiBkdHM6IHFjb206IHNjNzI4MDogTWFy
ayBQQ0llIGNvbnRyb2xsZXIgYXMgY2FjaGUgY29oZXJlbnQKCk9uIE1vbiwgRmViIDI3LCAyMDIz
IGF0IDAzOjA2OjE1UE0gKzA1MzAsIEtyaXNobmEgY2hhaXRhbnlhIGNodW5kcnUgd3JvdGU6Cj4g
TWFyayB0aGUgUENJZSBub2RlIGFzIGRtYS1jb2hlcmVudCBhcyB0aGUgZGV2aWNlcyBvbiBQQ0ll
IGJ1cyBhcmUKPiBjYWNoZSBjb2hlcmVudC4KPiAKCkJ1dCB0aGlzIGlzIGEgYnVnIGZpeCBhY3R1
YWxseS4gSWYgdGhlIGNvbnRyb2xsZXIgaXMgbm90IG1hcmtlZCBhcyBjYWNoZQpjb2hlcmVudCwg
dGhlbiBrZXJuZWwgd2lsbCB0cnkgdG8gZW5zdXJlIGNvaGVyZW5jeSBkdXJpbmcgZG1hLW9wcyBh
bmQgdGhhdCBtYXkKY2F1c2UgZGF0YSBjb3JydXB0aW9uLgoKU28gcGxlYXNlIGFkZCBmaXhlcyB0
YWcgYW5kIENDIHN0YWJsZS4KClRoYW5rcywKTWFuaQoKPiBTaWduZWQtb2ZmLWJ5OiBLcmlzaG5h
IGNoYWl0YW55YSBjaHVuZHJ1IDxxdWljX2tyaWNoYWlAcXVpY2luYy5jb20+Cj4gLS0tCj4gIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYzcyODAuZHRzaSB8IDIgKysKPiAgMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3Fjb20vc2M3MjgwLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2M3MjgwLmR0c2kK
PiBpbmRleCBiZGNiNzQ5Li44ZjRhYjZiIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcWNvbS9zYzcyODAuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYzcy
ODAuZHRzaQo+IEBAIC0yMTMxLDYgKzIxMzEsOCBAQAo+ICAJCQlwaW5jdHJsLW5hbWVzID0gImRl
ZmF1bHQiOwo+ICAJCQlwaW5jdHJsLTAgPSA8JnBjaWUxX2Nsa3JlcV9uPjsKPiAgCj4gKwkJCWRt
YS1jb2hlcmVudDsKPiArCj4gIAkJCWlvbW11cyA9IDwmYXBwc19zbW11IDB4MWM4MCAweDE+Owo+
ICAKPiAgCQkJaW9tbXUtbWFwID0gPDB4MCAmYXBwc19zbW11IDB4MWM4MCAweDE+LAo+IC0tIAo+
IDIuNy40Cj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCu
v+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
