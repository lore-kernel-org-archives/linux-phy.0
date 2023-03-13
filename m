Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E148C6FD19
	for <linux-phy@archiver.kernel.org>; Mon, 13 Mar 2023 21:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ERlXAzr8VLpY5WmRi6Dfoy3TQcivfmWUKoTaTlq0kA=; b=RsjnbqPI51BL0z
	8doqBawlQ+MsD2LMbBzy4ojUDBh/GPHxCX0eSlPOnI1/RwONpzEa3p7lu+OVkiCRJVIYp6jm9eIVU
	CqQiGc4wrtMUh1uG9XzG0nCwQXbH5GGD24NQ6EfpVbIgKDrJC/oH+T0tKu+oUhPBPzefc/N+LfHfz
	KxGsWqQPTWcRBsnif4azpi07wGGoqosmYFX2Qqh5JbxE5q/2lnSIOrYIx4FyIGvt5b6No+8XhaQKM
	JhT2goJGTrP/o0UAv+suWlZlFSKTlY35Daj0WCrbJ5xKgvyYJYkLFGxkT1sJS+JfR85rArObjYI/X
	SmyqMeN8P/lAFgLowq+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbpxD-007yu2-PY; Mon, 13 Mar 2023 21:43:39 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbpx2-007yqL-0k
	for linux-phy@lists.infradead.org; Mon, 13 Mar 2023 21:43:29 +0000
Received: by mail-yb1-xb36.google.com with SMTP id e65so4796238ybh.10
        for <linux-phy@lists.infradead.org>; Mon, 13 Mar 2023 14:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678743806;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RSd3V+HZ2T3mn2cPqXWrHfR5YkKZfdZAyYpCo4chbXU=;
        b=wNETqUCxQ2QTd0peBTohCpYEJ2IuKEYfhzChAAwi15Ax+cZ7Nu5/9on8O8dEN3/Yhk
         uUGfMvg+3ONZHcO34fS2YEBbMgnkk0EjwRwnZsdKpZoc5KuSgpvVSqF//mB1TCI7rcr4
         DHyrzg0Rc6r31JQtJXvJJR4kaM/Sb6kinPnzSv/iHCW5UCe6wbyk8dQIZB0PkpSMnWGe
         ttkmmIR2DJNzR+RoFcTUnKUx/ndmMrYASfV+2JBR/gqgzJDHaSw1/wb3/vHHmbOc5Moj
         v1D7GhXJa6ikrvJDzXnH1h0rYF3IQJnTCt4v6ikbPATQZBqEJ8YkTZNNhxRUOMTsjBRy
         T30w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678743806;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RSd3V+HZ2T3mn2cPqXWrHfR5YkKZfdZAyYpCo4chbXU=;
        b=V59G0zFjhDBwmevTUTLhLmFWgbx4SOmAOK5GdF/yBmNgCyKviH2d7TsUm29TrUkx6+
         rBf0DqJ3VxFKDB1YghVs9TK893huD4i4DT3KT+XpRQbuezdaW4S9g8IhBYh3Hrl2a40Z
         OKTsksbZ2sA1fkt+C7bL0UyHI5G3JSWZ5nB+A33gYIcmMeVxDAU0XHHH2lo/plRR1Z/p
         Cga830P5l2QNP6Kz/cUwk8J8Ij3poQXm2SUgYVloZCEvmrRb0taHOcARgen0hgDk0hJJ
         gzMxEX7sQ52M0iezyfnrIczlzn0XMJSkxWUEKV37MrG3s6WlkuP7ATPwBrGsYRU5MHQe
         dmQg==
X-Gm-Message-State: AO0yUKWu7A8Fw29YRPDTACrxm0WgZb7aVs9hwcCO2pFBMoxuVl4uvUdH
	hBgqatC2KUZEq/fQc1RUaoGFcAOzL40HWfIokV2KiQ==
X-Google-Smtp-Source: AK7set/44tdYO4dx/yFdy6mWrlex/dEJSg8Dq1+hFA0Q9cUVadFi5fLDSwyepQRkDs4fZQ1h3nRg33KAEHniI/POZO0=
X-Received: by 2002:a5b:c7:0:b0:b3b:d433:b063 with SMTP id d7-20020a5b00c7000000b00b3bd433b063mr168215ybp.4.1678743806009;
 Mon, 13 Mar 2023 14:43:26 -0700 (PDT)
MIME-Version: 1.0
References: <20230313161138.3598068-1-sean.anderson@seco.com> <20230313161138.3598068-4-sean.anderson@seco.com>
In-Reply-To: <20230313161138.3598068-4-sean.anderson@seco.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 Mar 2023 22:43:14 +0100
Message-ID: <CACRpkdan3xZPWazk5tS-i9uAvKB=UO3kt5WS0VALkwnUk6ckgg@mail.gmail.com>
Subject: Re: [PATCH v11 03/13] dt-bindings: Convert gpio-mmio to yaml
To: Sean Anderson <sean.anderson@seco.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	Camelia Alexandra Groza <camelia.groza@nxp.com>, Madalin Bucur <madalin.bucur@nxp.com>, 
	Bagas Sanjaya <bagasdotme@gmail.com>, Ioana Ciornei <ioana.ciornei@nxp.com>, 
	linuxppc-dev@lists.ozlabs.org, Bartosz Golaszewski <brgl@bgdev.pl>, 
	=?UTF-8?Q?Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>, 
	Jonas Gorski <jonas.gorski@gmail.com>, linux-gpio@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_144328_063224_2B7F5C60 
X-CRM114-Status: GOOD (  12.83  )
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

T24gTW9uLCBNYXIgMTMsIDIwMjMgYXQgNToxMuKAr1BNIFNlYW4gQW5kZXJzb24gPHNlYW4uYW5k
ZXJzb25Ac2Vjby5jb20+IHdyb3RlOgoKPiBUaGlzIGlzIGEgZ2VuZXJpYyBiaW5kaW5nIGZvciBz
aW1wbGUgTU1JTyBHUElPIGNvbnRyb2xsZXJzLiBBbHRob3VnaCB3ZQo+IGhhdmUgYSBzaW5nbGUg
ZHJpdmVyIGZvciB0aGVzZSBjb250cm9sbGVycywgdGhleSB3ZXJlIHByZXZpb3VzbHkgc3ByZWFk
Cj4gb3ZlciBzZXZlcmFsIGZpbGVzLiBDb25zb2xpZGF0ZSB0aGVtLiBUaGUgcmVnaXN0ZXIgZGVz
Y3JpcHRpb25zIGFyZQo+IGFkYXB0ZWQgZnJvbSB0aGUgY29tbWVudHMgaW4gdGhlIHNvdXJjZS4g
VGhlcmUgaXMgbm8gc2V0IG9yZGVyIGZvciB0aGUKPiByZWdpc3RlcnMsIHNvIEkgaGF2ZSBub3Qg
c3BlY2lmaWVkIG9uZS4KPgo+IFJlbmFtZSBicmNtLGJjbTYzNDUtZ3BpbyB0byBicmNtLGJjbTYz
eHgtZ3BpbyB0byByZWZsZWN0IHRoYXQgYmNtNjM0NQo+IGhhcyBtb3ZlZC4KPgo+IFNpZ25lZC1v
ZmYtYnk6IFNlYW4gQW5kZXJzb24gPHNlYW4uYW5kZXJzb25Ac2Vjby5jb20+Cj4gUmV2aWV3ZWQt
Ynk6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4KPiAtLS0KPiBMaW51
cyBvciBCYXJ0b3N6LCBmZWVsIGZyZWUgdG8gcGljayB0aGlzIHVwIGFzIHRoZSByZXN0IG9mIHRo
aXMgc2VyaWVzCj4gbWF5IG5vdCBiZSBtZXJnZWQgYW55IHRpbWUgc29vbi4KCkkgdGhpbmsgQmFy
dG9zeiB3aWxsIHBpY2sgdGhpcyBhcyBzb29uIGFzIHRoZSBEVCBtYWludGFpbmVycyBBQ0sgaXQu
CgpZb3VycywKTGludXMgV2FsbGVpagoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
