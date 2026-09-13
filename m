Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F53EC88E5C
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 18:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8wEFuXgNT2iTcyfGnjYK3avvcPrCTx4p9UjvN4bPSA=; b=L1qIEwRFD+9TVk
	/+TXp8eEuOtjQevZZl05dZ+ob9u0ITPbcY52+JPw+cxmOBqzwxVPXR3ewE3wdhy1rC1YV/urSI5MA
	arNDlWzQIbc2uP7YU6OoBYU3Dh36rMC0vRK/OLJXk03nNnqFLqBEHjP1yZxPGVOhX30zFqA+3U7k7
	3K5rSbTZTIUZ/OZE9jIjwdf1cvMfdQLNvJ/NLwNb3oV14tWFoHzHlFFFqWPldBGm2qgJEI9HV8m74
	CBgJdeS07/v13UKM5bjyxBkXX6oUUgemEwfn7rf2FoDMb19XaEOCcjvoCeyf0gisGPsl2aSy4q11E
	CHKh199g2u/pNeuX7TYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5oa6-00000001tSJ-2xIF;
	Sun, 13 Sep 2026 18:05:34 +0000
Received: from mail-ej2-x05.google.com ([2a00:1450:4864:34::5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5oa3-00000001tQq-0E7n
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 18:05:33 +0000
Received: by mail-ej2-x05.google.com with SMTP id a640c23a62f3a-c2950c25486so149910166b.1
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 11:05:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789322729; cv=none;
        d=google.com; s=arc-20260327;
        b=hGdVrPNyKwGORFyqIsMVin/ahlH3JnbNQG9T2BW2oXdQTmJeY6plJQcec3iqcLnBHF
         b0+mT3+MFy9zFy3Yt3oCdwfnFRbEHHyWVvfRaMgfGa9bebd1Ug1FU844CJbN1qnAdzAk
         IrI1gX7e6ffBOVzGVwgBVeFcgIQuOlrGZGPDNGVeKjx6aCJrxucFr26Zj5CW/RuQ8EEv
         Vr9lt28AuMzTsqw8VWLTQ3k8iyWahdjj3QFwvVZrQ7LzGslIgmDAIkjawTAI0pfccMu+
         5Tlmgx9Wzh7SMJ6WPMociRDs84bgl603U4I76O1rAgMEI2j0svWNhtNQMlNyZPdw0jW1
         SmYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=voliItkzs3OtrnJtmbhCv1xhQ+FU+qBLL3OO/h9nssc=;
        fh=wAQVmCplPSfZfuVNwa48iUK8pl+gXAX5Rjp1KU+1QPQ=;
        b=JibKHo9g0m+bYU1LnX76ks49W9hGdYhlLoSPPZDXQ0VK1VdakGVOMF8aHXrH57TvG9
         ZQMLKFhX9OzIc4soQILBwgd9L6SB+58CvzQgze/m6CfyMnaluW9hnhikMJaPf807dTK8
         FXcy6tK+AUkpNpGPVHjJxVMb7hwk1RNWj/F2+JjJFrZoJViXtS5i6yr3gFWLG399mZoN
         9oOr9Xjk1Gm35S/y2v/XX598sd86xmCx2Nbm2UILjuodf6voNZBZi7aFOaxK1l4Jx/G5
         V5ZNZC/2SSkONrKAfeQGGuyTryCFaAKfKK91cAimPqfdHl2PX7K8ve2v++14VB2bX0aP
         DEfg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789322729; x=1789927529; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=voliItkzs3OtrnJtmbhCv1xhQ+FU+qBLL3OO/h9nssc=;
        b=SIZ71KzQRzit+hr5DOeE7KzNKUzQi3Z7BiicIJwXcjVcN/mDAGJaT1+iSpf8LmydaP
         5a3dVM9KaRmGw4w4M7iQINQlTXoaJo7P2GOLdqr9oBNbxUERpkPDZGc6TsVRq4wuV72b
         GE/JublYiZdP+3mZH2fR2kOWdhAxQJvI/u02tES89fAZ3hzXLQCZYoV24SPvyOKH6joX
         GH9wwOLx5w8KVx6jrCeux4Wprxr1RGR84Ypzwlz+Nr7ljJJY37LnleJMOToyWLX6niXF
         EiwIcQcd8GdbCBSIEe72qhzErbD6I2NgTUrCOeZfgLTrNPGbAAsq6uuyZA562fz9pNpO
         CEmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789322729; x=1789927529;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=voliItkzs3OtrnJtmbhCv1xhQ+FU+qBLL3OO/h9nssc=;
        b=DXw7ApKVNoZYianDt04ZhC+RcGJiTDTfxuwhkXTjEKynPXbcRwpvmHaRCYvGq09hT+
         eXbsMAv078Kh4gb+Ji9qCNe8Pm1pCy+eb4M+Apx1ptXMgICefhtP54T8AW/OrDDffQbG
         GXjpNkQAJ+2r95jR1CUELsHghDXnSRhXrNXyPbf8V4hrH9rHRvMSgEK/GerfLTIT8udE
         sX2fjJwNXG/F/MkhqsDok6dB35Uk5DFLHWduVuBYv8YL/WInUIaCT6Lci2gfIFZokfZ7
         M0qHxquBy4u8iYaiGB6saDhNhqu8o6pOIza+U34uNNkOH/zP/GvSPFLlvch5baeNrtNL
         kiBg==
X-Forwarded-Encrypted: i=1; AKwUvByHuEbQhS/IWMMHYpBmYnfFYFWe3Il+lqnX5oP3yPyXk2QTQv4x/UV+ovdJWinotE7WD5bRBJ9Nuiw=@lists.infradead.org
X-Gm-Message-State: AFuF++kcj/lG8d+G8Rt2IsnEkzvUoZicvENWpKnfzWTEcQBKSB/yOfvv
	FtvyAg75epCkb/1/imXE5B7uLo7jTm9sqJ6q1qRjEyrN05PyAcVYLS8TuszUPKaDb4e8rOeNo48
	/YGqIgKEOF+At9kKnX+OPiNxjDnsSZMQ=
X-Gm-Gg: AYBFou3aMs+Gtb82ifIbdTsaeMVyug2jJ1D438pVrA80Mg9e5neZBWlrQV0iLUM9uiA
	Sw32QFHkjI0rSo3W2q8pISKEX+mk6PKhBUaegDz06pn+BMy6M+aRja2t5WAagPc/j+VI5fC3dD2
	03/S76vxGW65zJYdqRknhbjjp84VnfuOXarP5eq9DDg7stmTsGTJndpd0W0MPv/fd14GNUnpP2t
	Gi1oM6PSouyCE/5HMfrrsGPLijVCL6uS7eXX2K7Owm+kfevd5WPbPnrKUGVr39kTdCF4oIcm3t1
	8qsky0XSuXNhmrsZVbqOEUL99wtA5bc+K3SHw/W+L1+lTsiaQBdBG9rBXw==
X-Received: by 2002:a17:907:d109:b0:c29:3e59:fd03 with SMTP id
 a640c23a62f3a-c2966732c9cmr1353966666b.18.1789322728959; Sun, 13 Sep 2026
 11:05:28 -0700 (PDT)
MIME-Version: 1.0
References: <20260907153713.2572547-11-coiaprant@gmail.com> <20260912201332.127297-1-kuba@kernel.org>
In-Reply-To: <20260912201332.127297-1-kuba@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Mon, 14 Sep 2026 02:05:16 +0800
X-Gm-Features: AcwNN1XgxVngHvtMFNhv7y3qMtC3nxI3TV6XULwbytRJ0h4SCX-LBQfd6V3fGRY
Message-ID: <CALj3r0jBCoX=GRTrshY7QJO3Vykrbx+1NgE=zOV3S+WLLBNM2w@mail.gmail.com>
Subject: Re: [PATCH net-next v4 09/10] arm64: dts: rockchip:
 rk3568-photonicat: enable SGMII LAN port
To: Jakub Kicinski <kuba@kernel.org>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
	pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	heiko@sntech.de, vkoul@kernel.org, maxime.chevallier@bootlin.com, 
	mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com, 
	prabhakar.mahadev-lad.rj@bp.renesas.com, romain.gantois@bootlin.com, 
	hkallweit1@gmail.com, neil.armstrong@linaro.org, linux@armlinux.org.uk, 
	shawn.lin@rock-chips.com, david@ixit.cz, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_110531_453889_D154B879 
X-CRM114-Status: GOOD (  25.27  )
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

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDnmnIgxM+aXpeWRqOaX
pSAwNDoxM+WGmemBk++8mgo+ID4gQEAgLTI0Miw2ICsyNDMsNyBAQCAmY29tYnBoeTEgewo+ID4K
PiA+ICAmY29tYnBoeTIgewo+ID4gICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gKyAgICAgcm9j
a2NoaXAsc2dtaWktbWFjLXNlbCA9IDwwPjsKPiA+ICB9Owo+Cj4gW1NldmVyaXR5OiBMb3ddCj4g
VGhlIGNoYW5nZWxvZyBzYXlzOgo+Cj4gICAiRW5hYmxlIGNvbWJwaHkyIHdpdGggcm9ja2NoaXAs
c2dtaWktbWFjLXNlbCA9IDwwPiB0byByb3V0ZSB0aGUgU0dNSUkKPiAgICBpbnRlcmZhY2UgdG8g
R01BQzAuIgo+Cj4gSXMgdGhhdCBkZXNjcmlwdGlvbiBhY2N1cmF0ZT8gIEluIHRoZSBiYXNlbGlu
ZSB0aGUgbm9kZSBhbHJlYWR5IHJlYWRzOgo+Cj4gICAmY29tYnBoeTIgewo+ICAgICAgICAgICBz
dGF0dXMgPSAib2theSI7Cj4gICB9Owo+Cj4gc28gdGhlIG9ubHkgbmV3IHRoaW5nIGhlcmUgaXMg
dGhlIHJvY2tjaGlwLHNnbWlpLW1hYy1zZWwgcHJvcGVydHkuICBDb3VsZAo+IHRoZSB3b3JkaW5n
IGJlIGFkanVzdGVkIHRvIHNheSB0aGUgcHJvcGVydHkgaXMgYWRkZWQgdG8gYW4gYWxyZWFkeSBl
bmFibGVkCj4gY29tYnBoeTI/CgpZb3UncmUgcmlnaHQuIGNvbWJwaHkyIGlzIGFscmVhZHkgc3Rh
dHVzID0gIm9rYXkiIGluIHRoZSBiYXNlbGluZTsgdGhpcwpwYXRjaCBvbmx5IGFkZHMgdGhlIHJv
Y2tjaGlwLHNnbWlpLW1hYy1zZWwgcHJvcGVydHkgdG8gaXQuIEknbGwgZml4IHRoZQp3b3JkaW5n
IHRvIHNheSB0aGUgcHJvcGVydHkgaXMgYWRkZWQgdG8gYW4gYWxyZWFkeS1lbmFibGVkIGNvbWJw
aHkyLgoKPiBbU2V2ZXJpdHk6IExvd10KPiBUaGlzIGlzbid0IGEgYnVnLCBidXQgdGhlIG5ldyBw
cm9wZXJ0aWVzIGRvIG5vdCBmb2xsb3cgdGhlIG9yZGVyaW5nIHVzZWQgYnkKPiB0aGUgcmVzdCBv
ZiB0aGlzIGZpbGUsIHdoZXJlIHByb3BlcnRpZXMgY29tZSByb3VnaGx5IGFscGhhYmV0aWNhbGx5
IGFuZAo+IHN0YXR1cyBpcyBsYXN0LiAgSGVyZSByb2NrY2hpcCxzZ21paS1tYWMtc2VsIGxhbmRz
IGFmdGVyIHN0YXR1cywgaW4gJmdtYWMwCj4gYmVsb3cgcGNzLWhhbmRsZSBjb21lcyBiZWZvcmUg
bWFuYWdlZCwgYW5kIGluIHRoZSBuZXcgJnhwY3Mgb3ZlcnJpZGUgc3RhdHVzCj4gaXMgZmlyc3Qg
d2l0aCBwaHlzL3BoeS1uYW1lcyBhZnRlciBpdC4gIENvbXBhcmUgdGhlIGV4aXN0aW5nICZnbWFj
MQo+IG92ZXJyaWRlLCB3aGljaCBlbmRzIHdpdGggc3RhdHVzID0gIm9rYXkiOy4gIENvdWxkIHRo
ZXNlIGJlIHJlb3JkZXJlZD8KCkknbGwgcmVvcmRlciB0aGUgcHJvcGVydGllcyB0byBmb2xsb3cg
dGhlIGZpbGUncyBjb252ZW50aW9uIChyb3VnaGx5CmFscGhhYmV0aWNhbCwgd2l0aCBzdGF0dXMg
bGFzdCkKCj4gPiBAQCAtMzUwLDYgKzM5MSwyNSBAQCByZ21paV9waHk6IGV0aGVybmV0LXBoeUAz
IHsKPiA+ICAgICAgICAgICAgICAgcmVzZXQtZ3Bpb3MgPSA8JmdwaW80IFJLX1BDMCBHUElPX0FD
VElWRV9MT1c+Owo+ID4gICAgICAgICAgICAgICByeC1pbnRlcm5hbC1kZWxheS1wcyA9IDwxNTAw
PjsKPiA+ICAgICAgICAgICAgICAgdHgtaW50ZXJuYWwtZGVsYXktcHMgPSA8MTUwMD47Cj4gPiAr
Cj4gPiArICAgICAgICAgICAgIGxlZHMgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICNhZGRy
ZXNzLWNlbGxzID0gPDE+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0g
PDA+Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGxlZEAxIHsKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwxPjsKPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGNvbG9yID0gPExFRF9DT0xPUl9JRF9BTUJFUj47Cj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBmdW5jdGlvbiA9IExFRF9GVU5DVElPTl9XQU47Cj4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBkZWZhdWx0LXN0YXRlID0gImtlZXAiOwo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgIH07Cj4gPiArCj4gPiArICAgICAgICAgICAgICAgICAgICAgbGVkQDIg
ewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDI+Owo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgY29sb3IgPSA8TEVEX0NPTE9SX0lEX0dSRUVOPjsKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZ1bmN0aW9uID0gTEVEX0ZVTkNUSU9OX1dB
TjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRlZmF1bHQtc3RhdGUgPSAia2Vl
cCI7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ICsgICAgICAgICAgICAgfTsKPiA+
ICAgICAgIH07Cj4gPiAgfTsKPgo+IFtTZXZlcml0eTogTG93XQo+IFRoaXMgaHVuayBkZXNjcmli
ZXMgdGhlIExFRHMgb2YgdGhlIHByZS1leGlzdGluZyBSR01JSSBXQU4gUEhZIG9uICZtZGlvMSwK
PiB3aGljaCBpcyBhbHJlYWR5IGZ1bmN0aW9uYWwgYW5kIHVuYWZmZWN0ZWQgYnkgdGhlIFNHTUlJ
IGVuYWJsZW1lbnQuICBUaGUKPiBjaGFuZ2Vsb2cganVzdGlmaWVzIGl0IG9ubHkgd2l0aDoKPgo+
ICAgIkFsc28gYWRkIExFRCBjb25maWd1cmF0aW9uIGZvciB0aGUgZXhpc3RpbmcgUkdNSUkgUEhZ
IG9uIG1kaW8xIGZvcgo+ICAgIGNvbnNpc3RlbmN5LiIKPgo+IFdvdWxkIGl0IGJlIHByZWZlcmFi
bGUgdG8gc3BsaXQgdGhpcyBpbnRvIGl0cyBvd24gcGF0Y2gsIHNvIHRoaXMgY29tbWl0Cj4gY29u
dGFpbnMgb25seSB0aGUgU0dNSUkgTEFOIHBvcnQgZW5hYmxlbWVudD8KClRoZSBMRUQgY29uZmln
dXJhdGlvbiBmb3IgYm90aCBQSFlzIGlzIGtlcHQgaW4gdGhpcyBwYXRjaCBiZWNhdXNlIHRoZQp0
d28gUEhZcyBhcmUgdGhlIHNhbWUgTW90b3Jjb21tIGZhbWlseSB3aXJlZCBpZGVudGljYWxseSBv
biB0aGlzIGJvYXJkLAphbmQgZGVzY3JpYmluZyB0aGVtIHRvZ2V0aGVyIGtlZXBzIHRoZSB0d28g
bWRpbyBub2RlcyBjb25zaXN0ZW50LiBUaGUKY2hhbmdlIGlzIHB1cmVseSBkZXNjcmlwdGl2ZSBh
bmQgZG9lcyBub3QgYWZmZWN0IHRoZSBTR01JSSBlbmFibGVtZW50LgoKVGhhdCBzYWlkLCBpZiB5
b3UgcHJlZmVyIGl0IHNwbGl0IG91dCwgSSBjYW4gbW92ZSB0aGUgbWRpbzEgTEVECmRlc2NyaXB0
aW9uIGludG8gYSBzZXBhcmF0ZSBwYXRjaCBpbiB2NC4KCj4gPiBAQCAtNTg2LDMgKzY0NiwxMyBA
QCAmeGluMzJrIHsKPiA+ICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiAgICAg
ICBwaW5jdHJsLTAgPSA8JmNsazMya19vdXQxPjsKPiA+ICB9Owo+ID4gKwo+ID4gKyZ4cGNzIHsK
PiA+ICsgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+ICsgICAgIHBoeXMgPSA8JmNvbWJwaHkyIFBI
WV9UWVBFX1NHTUlJPjsKPiA+ICsgICAgIHBoeS1uYW1lcyA9ICJzZXJkZXMiOwo+ID4gK307Cj4K
PiBbU2V2ZXJpdHk6IE1lZGl1bV0KPiBTaG91bGQgcGh5cy9waHktbmFtZXMgbGl2ZSBpbiByazM1
NjguZHRzaSByYXRoZXIgdGhhbiBpbiBlYWNoIGJvYXJkIGZpbGU/Cj4KPiBUaGUgYmluZGluZyBs
aXN0cyB0aGVtIGFzIHJlcXVpcmVkIHByb3BlcnRpZXMgb2YgdGhlIFhQQ1Mgbm9kZToKPgo+ICAg
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9wY3Mvcm9ja2NoaXAtZHd4cGNz
LnlhbWwKPiAgIHJlcXVpcmVkOgo+ICAgICAtIGNvbXBhdGlibGUKPiAgICAgLSByZWcKPiAgICAg
LSAiI2FkZHJlc3MtY2VsbHMiCj4gICAgIC0gIiNzaXplLWNlbGxzIgo+ICAgICAtIGNsb2Nrcwo+
ICAgICAtIGNsb2NrLW5hbWVzCj4gICAgIC0gcGh5cwo+ICAgICAtIHBoeS1uYW1lcwo+ICAgICAt
IHBvd2VyLWRvbWFpbnMKPgo+IGJ1dCB0aGUgU29DIG5vZGUgaW4gYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NjguZHRzaSBoYXMgbmVpdGhlcjoKPgo+ICAgeHBjczogcGNzQGZkYTAw
MDAwIHsKPiAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1NjgteHBjcyI7Cj4g
ICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICAgICAgICAgICAjc2l6ZS1jZWxscyA9
IDwwPjsKPiAgICAgICAgICAgcmVnID0gPDB4MCAweGZkYTAwMDAwIDB4MCAweDIwMDAwMD47Cj4g
ICAgICAgICAgIGNsb2NrcyA9IDwmY3J1IFBDTEtfWFBDUz4sIDwmY3J1IENMS19YUENTX0VFRT47
Cj4gICAgICAgICAgIGNsb2NrLW5hbWVzID0gImNzciIsICJlZWUiOwo+ICAgICAgICAgICBwb3dl
ci1kb21haW5zID0gPCZwb3dlciBSSzM1NjhfUERfUElQRT47Cj4gICAgICAgICAgIHN0YXR1cyA9
ICJkaXNhYmxlZCI7Cj4KPiBEb2VzIHRoaXMgbWVhbiBldmVyeSByazM1NjggZHRiIHJlcG9ydHMg
cGNzQGZkYTAwMDAwIGFzIG1pc3NpbmcgdGhlIHJlcXVpcmVkCj4gcGh5cyBhbmQgcGh5LW5hbWVz
IHVuZGVyIG1ha2UgQ0hFQ0tfRFRCUz15LCBpbmNsdWRpbmcgYm9hcmRzIHRoYXQgZG8gbm90Cj4g
ZW5hYmxlIHRoZSBYUENTPwo+Cj4gVGhlIFhQQ1MgdG8gY29tYnBoeTIgY29ubmVjdGlvbiBpcyBp
bnRlcm5hbCB0byB0aGUgU29DLCBzbyBlYWNoIGJvYXJkIHRoYXQKPiBlbmFibGVzIGl0IHdpbGwg
aGF2ZSB0byByZXBlYXQgdGhlIHNhbWUgcGhhbmRsZSwgYXMgdGhpcyBwYXRjaCBkb2VzLiAgQ291
bGQKPiBwaHlzID0gPCZjb21icGh5MiBQSFlfVFlQRV9TR01JST47IGFuZCBwaHktbmFtZXMgPSAi
c2VyZGVzIjsgYmUgbW92ZWQgaW50bwo+IHRoZSBkdHNpIG5vZGUgaW5zdGVhZD8KCkFzIHJlcGxp
ZWQgaW4gdGhlIGVhcmxpZXIgcGF0Y2gsIHRoZSBTZXJEZXMgY29ubmVjdGlvbiBpcyBib2FyZC1z
cGVjaWZpYwooc29tZSBib2FyZHMgdXNlIGNvbWJwaHkxIGZvciBTR01JSSwgb3RoZXJzIHVzZSBj
b21icGh5MiksIHNvIGl0IGNhbm5vdApiZSBtb3ZlZCBpbnRvIHJrMzU2OC5kdHNpLgoKQmVzdCwK
Q29pYQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
