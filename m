Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62D1DC55174
	for <linux-phy@archiver.kernel.org>; Wed,  5 Aug 2026 17:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZZt7s8t4oVENFGrxnKfTmGmq/IuWFx3GSUfKsH81wYU=; b=X/RTBusKsZ2+qV
	WaNlR2nWgnE9ilOX1LQ1uUGB0BxPheaa//IiUC6EyBWtnMMiec6wOTBVHyc4a5xPo4jAj9bGNoove
	lnXJtN76XV4O6biyN1dxvaZRkVy+2+qcR2zSIlXYXqlBiMNcMN6oUC5YjRYanR+F7jwOKc/qHbcmd
	31F35R/ci63SN98lFDkBxqVaRowaOP3dDwoDX8m7nWOhW235mrmrC8bnfl3Zf+6zBu9Q2keAdAN/h
	23pHMg0MM6EaWjsQuymiJf1Xo5hYsMOO64rYQpMU+Kzax3VSlU5SimlN1KJZbpRsJPX2cqbkOk2Kd
	bcR3dZADBu6j7WzvgzPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrfHv-00000004KFu-3Dct;
	Wed, 05 Aug 2026 17:20:19 +0000
Received: from mail-ej2-x03.google.com ([2a00:1450:4864:34::3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrfHs-00000004KEV-0Vcl
	for linux-phy@lists.infradead.org;
	Wed, 05 Aug 2026 17:20:18 +0000
Received: by mail-ej2-x03.google.com with SMTP id a640c23a62f3a-c15f8dd6f18so71950166b.1
        for <linux-phy@lists.infradead.org>; Wed, 05 Aug 2026 10:20:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785950413; cv=none;
        d=google.com; s=arc-20260327;
        b=csD8E5oaR66u0HNZVEQGHUNABIQhEoOkJGBs7DmR6uOVuus3edNISt56IH2QrpKTZK
         Yg3ySkbKtM3v2ZoiCaQ6+40Kkwj4iKPlgpBM1yUN/im4prgw+ER0/qlC8SFp+KXgbtLM
         efRL++Gb+HSp9yru86IoeM+ktgZf5Sb8mA7rjt29U3D6D/CjQUts/tGDi5RJvfv2ftJ7
         /lGl4hX8TH2jcBeBvMeYA72146l7i1409Bs7CvrX5LS4hHSTSnNHQDEKtzlaQ7vgsvSc
         6ej0U7S/tjKXPV0VIa1m62D+kjaetb2OrFm/L3xPjXYw82Ch9uPu70WMhU0sU2a/cxyU
         fp0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Ed7d3IIv5/1/YcqJUTH/1nOy3fvwpEdX0Td4yCp6N7Q=;
        fh=H1wWVs0KwKl3CLIeaki7k9Iz7iad4J2uZzUXtdyL9uQ=;
        b=gMowFwn+jr0G5+Mf86kk0jv37EwRbnqNnKyI1xuWn+tcLuXaNHx0s39fkWHL26WFE3
         7T6Qzh6SvwA0lHTOhILS7hccymqGbsACHYjzpupz9UZ2BU+yJ7+OmcLwwOWhhrcxcMjl
         SIiagdu8zx66swidG1fYfdy/xEkRRsbcI7MzOJY0Z6UoDyKO0QhWPBfqDPc4KRhPdvz/
         zEPRG8yRYfhMMV/nJqOXwtDzGPNXl6dsgSVixxaUXuzm0JoaQRxKBpjfoqqrt5zOr3f4
         n723GG1du4DIkB9f7vGhdA3m+79l/PlMConZRdSxfp/2FEVloeRtFS0NRTiwaikE+SZv
         oWHw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785950413; x=1786555213; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Ed7d3IIv5/1/YcqJUTH/1nOy3fvwpEdX0Td4yCp6N7Q=;
        b=gvxOqfkdz41naJpMGYF1Gfe5gkUKSB8DgqcffumcB8Jwn5M4gByqlSp3HW36HI8Xn6
         K6AAb9G93lwDFGcggUsErDNGWNV6nE4C2JRU5SuZf6PhSnCI50jJ0MLYP1rMemJeTlsY
         LW95hWkAHNehchoreWvnlYDc/2x7V9XI0qiqdjJ8hQnKQyExIjB+zMpFZXQnoSIzhlu1
         zXgy5MnF7+Q3vAt9bpMzxOKvyY0835fyCHapCzKwEHvd3Jg0HjlJSp+oHCopOpQQ9v0v
         qNq3PduxBrIbMc5nS5bss6v4xfAnKHoP4uV11GAhlbyDe4NHy+Pg/x43txiJibzYjluA
         QfCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785950413; x=1786555213;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Ed7d3IIv5/1/YcqJUTH/1nOy3fvwpEdX0Td4yCp6N7Q=;
        b=lbNwJAb69sqZ2E3r2Z6NIomd/g+YdupmKQ31rI9fqNrx2tg3EGo01XNJ+JwUa2c9SZ
         PRbSUt+kO4LFV0Ac8lbcy1C0VjrhhSwGoNlhluvCtIK1WEb7two7a4clsZuDCf2/Sha0
         tWE4F+udeXkqyZGejOab6Y221eO0e0gZfIc6Qg2v7mRqsqahe+5y0lBWQupKvt3OhEX3
         SLFXwB4ob7w+rbRCAlldR1ja0ptjUS5i7xTNxviO0ESC+J+FDYMUzVj3O7GYTniewOYq
         dQd1RSY1d+EY2Pe21j5V/Axi0Wdv8jepVT1U+nDLgTE2/BopoKB7p4N1ia3uQk4tcEmN
         tlEA==
X-Forwarded-Encrypted: i=1; AHgh+RorMC9z52Htq9kgZkPSO3/BgQuR27DFoByLwq2FWvbbd5EUoDsB7Rmd89hmdPxk/mS+dqobkR4WtSg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzR05YDLoZhUNE7xRcRXF4KXa7MXyJ75N/Pvjh+y1SORqq5wHDg
	/20aEhd3f5u9nTS4XGmQ7/RRfZU8Z4ihwBtOf0umObDneuYfbmdddeO1dJbTTr+lPc/buLbqWg/
	iF/B1uzqyX4zkHx9ZmB91X1cQiznebao=
X-Gm-Gg: AR+sD12M2is4Hg6i9Jojqr+gGIEEWXQCbFmYD5fmMx75CGCxFEIdygPm6+NeY6Y6omp
	u6ZBSUBzyNmmEDo7l7KB0DbapoD3X35Fsq3A7+2fvqIrE/Z08HUK3G1RVpSYeWdU4c45dadF78r
	rq3xxUSJq7yvi/oq3vBr/8fW69Ju4kIShHPO4JTrXDWtvlr3pKjIsJO+Cmuk3CGjVFTe3gjSFJL
	ymxk9qrjjc+4gUYSz7RZasXiEyGdkcfH39TQne45/+NjIvR77wgzQTSPHmZjiyMrEo+PBqtyWpF
	EFWqmQSL46/BRu53JMBRrx0YKvTkU0e3BdfCyHxIJRd0mjeAhDG0iyzimgDgRSJPFt3QAD8=
X-Received: by 2002:a17:906:7315:b0:c16:b87:de64 with SMTP id
 a640c23a62f3a-c2039c22d1fmr433223466b.15.1785950412968; Wed, 05 Aug 2026
 10:20:12 -0700 (PDT)
MIME-Version: 1.0
References: <20260801142244.679437-2-coiaprant@gmail.com> <20260801142244.679437-6-coiaprant@gmail.com>
 <20260805-stirring-wondrous-mule-faf37d@quoll>
In-Reply-To: <20260805-stirring-wondrous-mule-faf37d@quoll>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 6 Aug 2026 01:20:09 +0800
X-Gm-Features: AUfX_mx8UFnbdlOwigeC8DoFtEekRCvwbvHBwVKJJj31ufe5iJU09i8ffEdEzOM
Message-ID: <CALj3r0hbp-zS7Sv-6T3uBOCq2ZO4XZHKvkD4dTZ3gXRS=90JUQ@mail.gmail.com>
Subject: Re: [PATCH v2 04/10] dt-bindings: net: pcs: add rockchip,rk3568-xpcs binding
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_102016_217221_9A6367B3 
X-CRM114-Status: GOOD (  35.80  )
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

SGkgS3J6eXN6dG9mLAoKVGhhbmtzIGZvciB0aGUgZGV0YWlsZWQgcmV2aWV3LiBIZXJlJ3MgbXkg
cmVzcG9uc2UgdG8gZWFjaCBwb2ludDoKCj4gPiArdGl0bGU6IFJvY2tjaGlwIFJLMzU2OCBTeW5v
cHN5cyBEZXNpZ25XYXJlIEV0aGVybmV0IFBDUwo+ID4gKwo+ID4gK21haW50YWluZXJzOgo+ID4g
KyAgLSBDb2lhIFByYW50IDxjb2lhcHJhbnRAZ21haWwuY29tPgo+ID4gKwo+ID4gK2Rlc2NyaXB0
aW9uOiB8Cj4gPiArICBSb2NrY2hpcCBSSzM1NjggU29DIGludGVncmF0ZXMgYSBTeW5vcHN5cyBE
ZXNpZ25XYXJlIEV0aGVybmV0IFBoeXNpY2FsCj4gPiArICBDb2RpbmcgU3VibGF5ZXIgKFhQQ1Mp
Lgo+ID4gKyAgVGhlIFBDUyBwcm92aWRlcyBhbiBpbnRlcmZhY2UgYmV0d2VlbiB0aGUgTWVkaWEg
QWNjZXNzIENvbnRyb2wgKE1BQykKPiA+ICsgIGFuZCB0aGUgUGh5c2ljYWwgTWVkaXVtIEF0dGFj
aG1lbnQgKFBNQSkgc3VibGF5ZXIgdGhyb3VnaCBhIE1lZGlhCj4gPiArICBJbmRlcGVuZGVudCBJ
bnRlcmZhY2UgKEdNSUkpLgo+ID4gKwo+ID4gKyAgVGhlIFhQQ1MgaXMgYWNjZXNzZWQgb3ZlciB0
aGUgQVBCMyBidXMgYW5kIGludGVybmFsbHkgY29ubmVjdGVkIHRvIGEKPiA+ICsgIE5hbmVuZyBD
b21ibyBTZXJEZXMgUEhZLgo+ID4gKyAgSXQgc3VwcG9ydHMgMTAwMEJBU0UtWCwgU0dNSUkgYW5k
IFFTR01JSSBtb2Rlcy4KPiA+ICsKPiA+ICsgIFRoZSBibG9jayBjb250YWlucyBmb3VyIE1JSSBw
b3J0cyAocGNzLW1paUAwLi4zKSB0aGF0IGNhbiBiZQo+ID4gKyAgaW5kaXZpZHVhbGx5IGVuYWJs
ZWQgYW5kIHJvdXRlZCB0byBvbmUgb2YgdGhlIEV0aGVybmV0IEdNQUMgY29udHJvbGxlcnMKPiA+
ICsgIHZpYSB0aGUgcGNzLWhhbmRsZSBwcm9wZXJ0eSBpbiB0aGUgTUFDIGRldmljZSB0cmVlIG5v
ZGUuCgoxLiBDb21taXQgbWVzc2FnZTogSSdsbCBkcm9wIHRoZSByZWR1bmRhbnQgZGVzY3JpcHRp
b24gcGFyYWdyYXBoIGFuZCBrZWVwCiAgIG9ubHkgdGhlIGVzc2VudGlhbCBpbmZvcm1hdGlvbi4K
CjIuIFN1YmplY3Q6IEknbGwgZHJvcCB0aGUgcmVkdW5kYW50ICJiaW5kaW5nIiB3b3JkLgoKPiAr
cHJvcGVydGllczoKPiArICBjb21wYXRpYmxlOgo+ICsgICAgY29uc3Q6IHJvY2tjaGlwLHJrMzU2
OC14cGNzCj4gKwo+ICsgICcjYWRkcmVzcy1jZWxscyc6Cj4gKyAgICBjb25zdDogMQo+ICsKPiAr
ICAnI3NpemUtY2VsbHMnOgo+ICsgICAgY29uc3Q6IDAKCjMuIHJlZyBvcmRlcjogSSdsbCBtb3Zl
IHJlZyB0byB0aGUgc2Vjb25kIHByb3BlcnR5IChhZnRlciBjb21wYXRpYmxlKS4KCjQuIFF1b3Rl
czogSSdsbCB1c2UgY29uc2lzdGVudCBxdW90aW5nIHN0eWxlIHRocm91Z2hvdXQuCgo+ICsgIHJl
ZzoKPiArICAgIGRlc2NyaXB0aW9uOiB8Cj4gKyAgICAgIEJhc2UgYWRkcmVzcyBhbmQgc2l6ZSBv
ZiB0aGUgWFBDUyByZWdpc3RlciBzcGFjZSBtYXBwZWQgb3ZlciB0aGUKPiArICAgICAgQVBCMyBi
dXMuCgo1LiByZWcgZGVzY3JpcHRpb246IEknbGwgZHJvcCBpdCBhcyByZWR1bmRhbnQuCgo+ICsg
IGNsb2NrczoKPiArICAgIGRlc2NyaXB0aW9uOiB8Cj4gKyAgICAgIENsb2NrIHNvdXJjZXMgZm9y
IHRoZSBYUENTOgo+ICsgICAgICAtIGNzcjogQVBCMyBidXMgaW50ZXJmYWNlIGNsb2NrIChjbGtf
Y3NyX2kpLCByZXF1aXJlZCBmb3IgcmVnaXN0ZXIKPiArICAgICAgICBhY2Nlc3MuCj4gKyAgICAg
IC0gZWVlOiBFRUUgY2xvY2sgKGNsa19lZWVfaSksIHJlcXVpcmVkIGZvciBFbmVyZ3kgRWZmaWNp
ZW50Cj4gKyAgICAgICAgRXRoZXJuZXQgKEVFRSkgb3BlcmF0aW9uLgo+ICsgICAgbWluSXRlbXM6
IDIKPiArICAgIG1heEl0ZW1zOiAyCgo2LiBjbG9ja3M6IEknbGwgY2hhbmdlIHRvIGl0ZW1zIHdp
dGggZGVzY3JpcHRpb25zIGluc3RlYWQgb2YgbWluL21heEl0ZW1zLgoKPiArICBjbG9jay1uYW1l
czoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBjc3IKPiArICAgICAgLSBjb25zdDog
ZWVlCj4gKwo+ICsgIHBoeXM6Cj4gKyAgICBkZXNjcmlwdGlvbjogfAoKNy4gZGVzY3JpcHRpb24g
Zm9ybWF0dGluZzogSSdsbCByZW1vdmUgdW5uZWNlc3NhcnkgJ3wnIHdoZXJlIG5vdCBuZWVkZWQu
Cgo+ICsgIHBvd2VyLWRvbWFpbnM6Cj4gKyAgICBkZXNjcmlwdGlvbjogfAo+ICsgICAgICBQb3dl
ciBkb21haW4gZm9yIHRoZSBYUENTLgoKOC4gcG93ZXItZG9tYWlucyBkZXNjcmlwdGlvbjogSSds
bCBkcm9wIHRoZSByZWR1bmRhbnQgcGFydC4KCj4gK3BhdHRlcm5Qcm9wZXJ0aWVzOgo+ICsgICJe
cGNzLW1paUBbMC0zXSQiOgoKOS4gcGNzLW1paSBuYW1pbmc6IEkgdXNlZCAicGNzLW1paSIgYmVj
YXVzZSB0aGUgUm9ja2NoaXAgVFJNIHJlZmVycyB0bwogICB0aGVzZSBhcyAiTUlJIHBvcnRzIiBh
bmQgdGhleSBhcmUgZnVuY3Rpb25hbGx5IFBDUyBpbnN0YW5jZXMuIEkgZG8gc2VlCiAgIGEgc2lt
aWxhciBwYXR0ZXJuIGluIHRoZSBSZW5lc2FzIFJaTjEgTUlJQyBiaW5kaW5nIChyZW5lc2FzLHJ6
bjEtbWlpYy55YW1sKSwKICAgd2hpY2ggdXNlcyAibWlpLWNvbnZAWzAtNV0kIiBmb3IgaXRzIHBv
cnRzLiBTbyB0aGUgaWRlYSBvZiBoYXZpbmcKICAgY2hpbGQgbm9kZXMgcGVyIHBvcnQgaXMgbm90
IG5ldy4KCiAgIElmIHlvdSBwcmVmZXIgYSBkaWZmZXJlbnQgbmFtZSAoZS5nLiwgInBvcnRAMCIt
InBvcnRAMyIgb3IgInBjc0AwIi0icGNzQDMiKSwKICAgSSdtIGhhcHB5IHRvIGNoYW5nZSBpdC4g
UGxlYXNlIGxldCBtZSBrbm93IHdoYXQgbmFtaW5nIHlvdSdkIHJlY29tbWVuZC4KCj4gKyAgICBw
cm9wZXJ0aWVzOgo+ICsgICAgICByZWc6Cj4gKyAgICAgICAgbWluaW11bTogMAo+ICsgICAgICAg
IG1heGltdW06IDMKCjEwLiByZWcgY29uc3RyYWludHM6IEknbGwgZml4IHRoZSBtaW4vbWF4IGNv
bnN0cmFpbnQgdG8gdXNlIGl0ZW1zIChvciBkcm9wCiAgICBpdCBzaW5jZSB0aGUgbm9kZSBuYW1l
IHJlZ2V4IGFscmVhZHkgZW5mb3JjZXMgdGhlIHJhbmdlKS4KCj4gKyAgICAgIHN0YXR1czogdHJ1
ZQoKMTEuIHN0YXR1cyBwcm9wZXJ0eTogSSdsbCByZW1vdmUgaXQsIGFzIGl0J3MgYSBnZW5lcmlj
IHByb3BlcnR5IGFuZAogICAgZG9lc24ndCBuZWVkIGV4cGxpY2l0IGRlY2xhcmF0aW9uLgoKVGhh
bmtzLApDb2lhCgpLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+IOS6jjIwMjbl
ubQ45pyINeaXpeWRqOS4iSAxNToyOeWGmemBk++8mgo+Cj4gT24gU2F0LCBBdWcgMDEsIDIwMjYg
YXQgMTA6MjI6MjhQTSArMDgwMCwgQ29pYSBQcmFudCB3cm90ZToKPiA+IEFkZCBkZXZpY2UgdHJl
ZSBiaW5kaW5nIGRvY3VtZW50YXRpb24gZm9yIHRoZSBTeW5vcHN5cyBEZXNpZ25XYXJlCj4gPiBY
UENTIGludGVncmF0ZWQgb24gdGhlIFJvY2tjaGlwIFJLMzU2OCBTb0MuCj4gPgo+ID4gVGhlIFhQ
Q1MgaXMgYWNjZXNzZWQgb3ZlciB0aGUgQVBCMyBidXMgYW5kIGludGVybmFsbHkgY29ubmVjdGVk
IHRvCj4gPiBhIE5hbmVuZyBDb21ibyBTZXJEZXMgUEhZLiAgSXQgc3VwcG9ydHMgMTAwMEJBU0Ut
WCwgU0dNSUksIGFuZAo+ID4gUVNHTUlJIG1vZGVzLCB3aXRoIGZvdXIgTUlJIHBvcnRzLgo+ID4K
PiA+IFRoZSBiaW5kaW5nIGRlc2NyaWJlczoKPiA+IC0gUmVxdWlyZWQgcHJvcGVydGllczogY29t
cGF0aWJsZSwgcmVnLCBjbG9ja3MsIGNsb2NrLW5hbWVzCj4gPiAtIE9wdGlvbmFsIHByb3BlcnRp
ZXM6IHBoeXMsIHBoeS1uYW1lcywgcG93ZXItZG9tYWlucwo+ID4gLSBwY3MtbWlpIHN1Yi1ub2Rl
cyBmb3IgZWFjaCBNSUkgcG9ydCAocmVnIDAuLjMpCj4KPiBJcnJlbGV2YW50IHBhcmFncmFwaC4g
V2UgY2FuIHJlYWQgdGhlIGRpZmYuIERyb3AuCj4KPiBBIG5pdCwgc3ViamVjdDogZHJvcCBzZWNv
bmQvbGFzdCwgcmVkdW5kYW50ICJiaW5kaW5nIi4gVGhlCj4gImR0LWJpbmRpbmdzIiBwcmVmaXgg
aXMgYWxyZWFkeSBzdGF0aW5nIHRoYXQgdGhlc2UgYXJlIGJpbmRpbmdzLgo+IFNlZSBhbHNvOgo+
IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y3LjEtcmM3L3NvdXJjZS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc3VibWl0dGluZy1wYXRjaGVzLnJzdCNMMjMKPgo+
ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENvaWEgUHJhbnQgPGNvaWFwcmFudEBnbWFpbC5jb20+Cj4g
PiAtLS0KPiA+ICAuLi4vYmluZGluZ3MvbmV0L3Bjcy9yb2NrY2hpcC1kd3hwY3MueWFtbCAgICAg
fCAxMjcgKysrKysrKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEyNyBpbnNlcnRp
b25zKCspCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9uZXQvcGNzL3JvY2tjaGlwLWR3eHBjcy55YW1sCj4gPgo+ID4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvcGNzL3JvY2tjaGlwLWR3eHBj
cy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9wY3Mvcm9ja2No
aXAtZHd4cGNzLnlhbWwKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAw
MDAwMDAwLi4zZTNmM2EzODhkODIyCj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3Bjcy9yb2NrY2hpcC1kd3hwY3MueWFtbAo+
ID4gQEAgLTAsMCArMSwxMjcgQEAKPiA+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BM
LTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPiA+ICslWUFNTCAxLjIKPiA+ICstLS0KPiA+ICsk
aWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL25ldC9wY3Mvcm9ja2NoaXAtZHd4cGNz
LnlhbWwjCj4gPiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9j
b3JlLnlhbWwjCj4gPiArCj4gPiArdGl0bGU6IFJvY2tjaGlwIFJLMzU2OCBTeW5vcHN5cyBEZXNp
Z25XYXJlIEV0aGVybmV0IFBDUwo+ID4gKwo+ID4gK21haW50YWluZXJzOgo+ID4gKyAgLSBDb2lh
IFByYW50IDxjb2lhcHJhbnRAZ21haWwuY29tPgo+ID4gKwo+ID4gK2Rlc2NyaXB0aW9uOiB8Cj4g
PiArICBSb2NrY2hpcCBSSzM1NjggU29DIGludGVncmF0ZXMgYSBTeW5vcHN5cyBEZXNpZ25XYXJl
IEV0aGVybmV0IFBoeXNpY2FsCj4gPiArICBDb2RpbmcgU3VibGF5ZXIgKFhQQ1MpLgo+ID4gKyAg
VGhlIFBDUyBwcm92aWRlcyBhbiBpbnRlcmZhY2UgYmV0d2VlbiB0aGUgTWVkaWEgQWNjZXNzIENv
bnRyb2wgKE1BQykKPiA+ICsgIGFuZCB0aGUgUGh5c2ljYWwgTWVkaXVtIEF0dGFjaG1lbnQgKFBN
QSkgc3VibGF5ZXIgdGhyb3VnaCBhIE1lZGlhCj4gPiArICBJbmRlcGVuZGVudCBJbnRlcmZhY2Ug
KEdNSUkpLgo+ID4gKwo+ID4gKyAgVGhlIFhQQ1MgaXMgYWNjZXNzZWQgb3ZlciB0aGUgQVBCMyBi
dXMgYW5kIGludGVybmFsbHkgY29ubmVjdGVkIHRvIGEKPiA+ICsgIE5hbmVuZyBDb21ibyBTZXJE
ZXMgUEhZLgo+ID4gKyAgSXQgc3VwcG9ydHMgMTAwMEJBU0UtWCwgU0dNSUkgYW5kIFFTR01JSSBt
b2Rlcy4KPiA+ICsKPiA+ICsgIFRoZSBibG9jayBjb250YWlucyBmb3VyIE1JSSBwb3J0cyAocGNz
LW1paUAwLi4zKSB0aGF0IGNhbiBiZQo+ID4gKyAgaW5kaXZpZHVhbGx5IGVuYWJsZWQgYW5kIHJv
dXRlZCB0byBvbmUgb2YgdGhlIEV0aGVybmV0IEdNQUMgY29udHJvbGxlcnMKPiA+ICsgIHZpYSB0
aGUgcGNzLWhhbmRsZSBwcm9wZXJ0eSBpbiB0aGUgTUFDIGRldmljZSB0cmVlIG5vZGUuCj4gPiAr
Cj4gPiArcHJvcGVydGllczoKPiA+ICsgIGNvbXBhdGlibGU6Cj4gPiArICAgIGNvbnN0OiByb2Nr
Y2hpcCxyazM1NjgteHBjcwo+ID4gKwo+ID4gKyAgJyNhZGRyZXNzLWNlbGxzJzoKPiA+ICsgICAg
Y29uc3Q6IDEKPiA+ICsKPiA+ICsgICcjc2l6ZS1jZWxscyc6Cj4gPiArICAgIGNvbnN0OiAwCj4K
PiByZWcgaXMgYWx3YXlzIHRoZSBzZWNvbmQgcHJvcGVydHkuCj4KPiBBbHNvLCB1c2UgY29uc2lz
dGVudCBzdHlsZSBvZiBxdW90ZXMuCj4KPiA+ICsKPiA+ICsgIHJlZzoKPiA+ICsgICAgZGVzY3Jp
cHRpb246IHwKPiA+ICsgICAgICBCYXNlIGFkZHJlc3MgYW5kIHNpemUgb2YgdGhlIFhQQ1MgcmVn
aXN0ZXIgc3BhY2UgbWFwcGVkIG92ZXIgdGhlCj4gPiArICAgICAgQVBCMyBidXMuCj4KPiBEcm9w
IGRlc2NyaXB0aW9uLCByZWR1bmRhbnQuCj4KPiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+ICsKPiA+
ICsgIGNsb2NrczoKPiA+ICsgICAgZGVzY3JpcHRpb246IHwKPiA+ICsgICAgICBDbG9jayBzb3Vy
Y2VzIGZvciB0aGUgWFBDUzoKPiA+ICsgICAgICAtIGNzcjogQVBCMyBidXMgaW50ZXJmYWNlIGNs
b2NrIChjbGtfY3NyX2kpLCByZXF1aXJlZCBmb3IgcmVnaXN0ZXIKPiA+ICsgICAgICAgIGFjY2Vz
cy4KPiA+ICsgICAgICAtIGVlZTogRUVFIGNsb2NrIChjbGtfZWVlX2kpLCByZXF1aXJlZCBmb3Ig
RW5lcmd5IEVmZmljaWVudAo+ID4gKyAgICAgICAgRXRoZXJuZXQgKEVFRSkgb3BlcmF0aW9uLgo+
ID4gKyAgICBtaW5JdGVtczogMgo+ID4gKyAgICBtYXhJdGVtczogMgo+Cj4gTm8sIGluc3RlYWQg
bGlzdCBpdGVtcyB3aXRoIGRlc2NyaXB0aW9uLgo+Cj4gPiArCj4gPiArICBjbG9jay1uYW1lczoK
PiA+ICsgICAgaXRlbXM6Cj4gPiArICAgICAgLSBjb25zdDogY3NyCj4gPiArICAgICAgLSBjb25z
dDogZWVlCj4gPiArCj4gPiArICBwaHlzOgo+ID4gKyAgICBkZXNjcmlwdGlvbjogfAo+Cj4gRG8g
bm90IG5lZWQgJ3wnIHVubGVzcyB5b3UgbmVlZCB0byBwcmVzZXJ2ZSBmb3JtYXR0aW5nLgo+Cj4g
PiArICAgICAgVGhlIHBoYW5kbGUgb2YgU2VyRGVzIFBIWSAoTmFuZW5nIENvbWJvIFBIWSkgdGhh
dCBwcm92aWRlcwo+ID4gKyAgICAgIHRoZSBzZXJpYWwgbGFuZXMgZm9yIDEwMDBCQVNFLVggLyBT
R01JSSAvIFFTR01JSS4KPiA+ICsgICAgICBUaGUgU2VyRGVzIG11c3QgYmUgcG93ZXJlZCBvbiBh
bmQgaW5pdGlhbGlzZWQgYmVmb3JlIGFueSBYUENTCj4gPiArICAgICAgcmVnaXN0ZXIgYWNjZXNz
Lgo+ID4gKyAgICBtYXhJdGVtczogMQo+ID4gKwo+ID4gKyAgcGh5LW5hbWVzOgo+ID4gKyAgICBj
b25zdDogc2VyZGVzCj4gPiArCj4gPiArICBwb3dlci1kb21haW5zOgo+ID4gKyAgICBkZXNjcmlw
dGlvbjogfAo+ID4gKyAgICAgIFBvd2VyIGRvbWFpbiBmb3IgdGhlIFhQQ1MuCj4KPiBEcm9wIHNl
bnRlbmNlIGFuZCB8Cj4KPiA+ICsgICAgICBPbiBSSzM1NjggdGhpcyBpcyB0eXBpY2FsbHkgdGhl
IFBEX1BJUEUgcG93ZXIgZG9tYWluLCB3aGljaCBhbHNvCj4gPiArICAgICAgc3VwcGxpZXMgdGhl
IFNlckRlcyBQSFkuCj4gPiArICAgIG1heEl0ZW1zOiAxCj4gPiArCj4gPiArcGF0dGVyblByb3Bl
cnRpZXM6Cj4gPiArICAiXnBjcy1taWlAWzAtM10kIjoKPgo+IFdoeSBgZ2l0IGdyZXAgcGNzLW1p
aUBgIGdpdmVzIG1lIG5vIHJlc3VsdHM/IEFyZSB5b3UgZG9pbmcgdGhpcwo+IHNpbWlsYXJseSB0
byBleGlzdGluZyBkZXZpY2VzIG9yIGlzIHRoaXMgcXVpdGUgZGlmZmVyZW50IGRldmljZSB0aGFu
Cj4gZXZlcnkgb3RoZXIgaGFyZHdhcmU/Cj4KPiA+ICsgICAgdHlwZTogb2JqZWN0Cj4gPiArICAg
IGRlc2NyaXB0aW9uOiB8Cj4KPiBTYW1lIGhlcmUKPgo+ID4gKyAgICAgIE9uZSBvZiB0aGUgZm91
ciBNSUkgcG9ydHMgb2YgdGhlIFhQQ1MuCj4gPiArICAgICAgVGhlIHBvcnQgbnVtYmVyIGlzIHNw
ZWNpZmllZCBieSB0aGUgcmVnIHByb3BlcnR5ICgwLi4zKS4KPgo+IERyb3Agc2VudGVuY2UsIHJl
ZHVuZGFudC4gU2NoZW1hIHRlbGxzIHRoYXQuCj4KPiA+ICsgICAgICBUaGUgcG9ydCBpcyBsaW5r
ZWQgdG8gYW4gRXRoZXJuZXQgTUFDIGNvbnRyb2xsZXIgdmlhIHRoZQo+ID4gKyAgICAgIHBjcy1o
YW5kbGUgcHJvcGVydHkgaW4gdGhlIE1BQydzIGRldmljZSB0cmVlIG5vZGUuCj4gPiArCj4gPiAr
ICAgIHByb3BlcnRpZXM6Cj4gPiArICAgICAgcmVnOgo+ID4gKyAgICAgICAgbWluaW11bTogMAo+
ID4gKyAgICAgICAgbWF4aW11bTogMwo+ID4gKyAgICAgICAgZGVzY3JpcHRpb246IHwKPgo+IEFz
IHdlbGwKPgo+ID4gKyAgICAgICAgICBNSUkgcG9ydCBudW1iZXIgb2YgUENTLgo+ID4gKwo+ID4g
KyAgICAgIHN0YXR1czogdHJ1ZQo+Cj4gTm9wZSwgZG8geW91IHNlZSBhbnl3aGVyZSBjb2RlIGxp
a2UgdGhpcz8KPgo+ID4gKwo+ID4gKyAgICByZXF1aXJlZDoKPiA+ICsgICAgICAtIHJlZwo+ID4g
Kwo+ID4gKyAgICBhZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKPiA+ICsKPiA+ICtyZXF1aXJl
ZDoKPiA+ICsgIC0gY29tcGF0aWJsZQo+ID4gKyAgLSByZWcKPiA+ICsgIC0gY2xvY2tzCj4gPiAr
ICAtIGNsb2NrLW5hbWVzCj4gPiArCj4gPiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4g
PiArCj4gPiArZXhhbXBsZXM6Cj4gPiArICAtIHwKPiA+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRp
bmdzL2Nsb2NrL3JrMzU2OC1jcnUuaD4KPiA+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Bv
d2VyL3JrMzU2OC1wb3dlci5oPgo+ID4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcGh5L3Bo
eS5oPgo+ID4gKwo+ID4gKyAgICBwY3NAZmRhMDAwMDAgewo+ID4gKyAgICAgIGNvbXBhdGlibGUg
PSAicm9ja2NoaXAscmszNTY4LXhwY3MiOwo+ID4gKyAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+
Owo+ID4gKyAgICAgICNzaXplLWNlbGxzID0gPDA+Owo+ID4gKyAgICAgIHJlZyA9IDwweGZkYTAw
MDAwIDB4MjAwMDAwPjsKPiA+ICsgICAgICBjbG9ja3MgPSA8JmNydSBQQ0xLX1hQQ1M+LCA8JmNy
dSBDTEtfWFBDU19FRUU+Owo+ID4gKyAgICAgIGNsb2NrLW5hbWVzID0gImNzciIsICJlZWUiOwo+
ID4gKyAgICAgIHBoeXMgPSA8JmNvbWJwaHkyIFBIWV9UWVBFX1NHTUlJPjsKPiA+ICsgICAgICBw
aHktbmFtZXMgPSAic2VyZGVzIjsKPiA+ICsgICAgICBwb3dlci1kb21haW5zID0gPCZwb3dlciBS
SzM1NjhfUERfUElQRT47Cj4gPiArCj4gPiArICAgICAgcGNzLW1paUAwIHsKPiA+ICsgICAgICAg
IHJlZyA9IDwwPjsKPiA+ICsgICAgICB9Owo+ID4gKyAgICB9Owo+ID4gLS0KPiA+IDIuNDcuMwo+
ID4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
