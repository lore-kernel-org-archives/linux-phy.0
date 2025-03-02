Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3D5FC19F32
	for <linux-phy@archiver.kernel.org>; Sun,  2 Mar 2025 09:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GjTYzRAfMnKFYefE/kugZYvbkQJdLFGWc6DQsevJ9wg=; b=QRzV6/USXPptGL
	sn5//2Eb6pdO0zJGtcRWU139TGCBQrIfvIYAu8up2x9tEOXTZL/0bw7F2VQZqZzmycgov9vV1hs1M
	G6sEQqTvlGOx9EubPuAXdEjrUp9XUlNeQDJK6G6c+p7BH3/GwhmBLm61/u80r86PDfOCs8nnClVbP
	7XIYghby3Oextb6fXDO+fgDRSh/0CGtc0L344mzMNcjpfwGHKXypEntIK8x2IAGOr2Ucoc6YbDz7P
	MlvAlicrMT/1u6LtgOYLqTo/aGRhBk8wdxOaQqITyF8NhMeynvqRZyVCPviZxehnRYJ2vM8aMvYCq
	QaG1aA9h0MwuGepLcltQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tofSm-0000000FiNn-3Mml;
	Sun, 02 Mar 2025 09:18:20 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tofRD-0000000FiI6-1m2o;
	Sun, 02 Mar 2025 09:16:44 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-abf628d653eso98701566b.0;
        Sun, 02 Mar 2025 01:16:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740907001; x=1741511801; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gt4e/Q1bzVAKDz/zUzGYf19qKql6n2SPXCwUMfSa3zM=;
        b=iCVKxwtDgnMy5oAQeJzROHS7Ag5mzXDe62evYrMihIDaRjjhtfvNBPEqz3mHW3wPNE
         GOcUtYtaPSv89/7O2zhBLlBA4ilKV5nIpRwk+ayjuLdvnviGJt/vbZHXE9LM8awPHxjc
         oMVt+cm1WzxYX9F1oU/aueisWdLUR+mEYEuy9FbBjAw73dRbvVD02FbGMtddn4Qnr3sA
         KBpUtHoZopbPtg8pKPcmVj9N6meZSW6wwliK/vhBrZNO2jhXR1joglGdT8bBJJ8WXbO7
         VrpeqL1G1QgrJSwUI8KhluxreZwNjCG2z8Lzhz+2T4HgpFi94KCjxCVkSP5guuRBg08q
         y/ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740907001; x=1741511801;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gt4e/Q1bzVAKDz/zUzGYf19qKql6n2SPXCwUMfSa3zM=;
        b=E+lcBR4X7jEtugOSBSNu17uCYomDnfLIXb3at6tigRt3bp3oJ/f0W/CHgH7WdkdXLf
         t3m7V7nb12bL4WpCnP+uSLqbhW7i/Pz/E0DHAnJaLYJl7GSa9GWTAMrWV5+DVUM0atYh
         6XVPeepzTEnhHApLlxoSJc6sEVT/R5zMRY1C+giFcwqlFLSfLIHL2+ZnwipKs7gaeZF9
         OvngL34inc6uTa0MC0orIqP61BiY5EXy8+01Qdnergs74U4cTV0LplxsPoHB0KaHY1yI
         neCr4NEcjlurcl+y40Ye70wH1I3wWoQsuWIAmlvk5EH7DIjSmFNrVcnY3glOxpFyrZ5W
         Q+jw==
X-Forwarded-Encrypted: i=1; AJvYcCW7Uq0ehoFiqTE5Aqraj/uwR1UC1N+123VwXpjQJh5Q0A4Ghhhky6Xt4o6IkREkbL3GlqCH8QrNcpjK@lists.infradead.org, AJvYcCWIRHKUk8db0ZdPDBFuAP0ZgvZxSycqKoCGXcHat2YHxFUtgE1hY3x3gVTa1u92T8kgfseLPq3NMM6hN0+B5c13@lists.infradead.org
X-Gm-Message-State: AOJu0YxKlRJTWIlG8DGtevzAhkprxnFi0+GN/gikrB8uDlUP8ZcCrCkz
	naRFfWWXzk1Sqs5CR5mkbV2PJLIigUiFspJaGUpmO4t00AaE7ggr
X-Gm-Gg: ASbGnctn09XAnhk/WnqbYxKeLhS44L0K5rlS+XxbVOjJ5UhoviPeauewMdrDTDWEX2Y
	rSMJlU75nuKp2nPTzHeSh5uIp8MhToNHBhQ+HC7Zv9Wjexca9uCAuSiNzCMDJ/EaJEcF3VcRtha
	tR0krM4YjLFwvBx9zayIJ8DfIOAcSNOnlf9kVweOOTFN81pHgF2Y+YeYHSCZXu1UM8f0byq2siC
	LZcK+VKkwF8cZS3DZPHnSVivFYsDK48IjJI/AZAXaJQ6TGPXLBz5gyFxhnQjiNg21tGSJZv7CTa
	F+ZZSnBvOtG0h/E7kFxMYTzL7ud5gVn/tVeXOUrStt6j/zXKPly4M+p1wxiEM91DE1D62J/mmi7
	lXwjlLknB3hqOZsd5ap+/gH0=
X-Google-Smtp-Source: AGHT+IEYSDw2sP7Dh+Z2pA1UtfA1dKfkOfTidFVCkHLXhYUdHVMwVkHLto91nPU2C2aCCuTbWanVJQ==
X-Received: by 2002:a17:907:3f22:b0:abe:c3a8:7aa2 with SMTP id a640c23a62f3a-abf268228c1mr1096068066b.46.1740907000673;
        Sun, 02 Mar 2025 01:16:40 -0800 (PST)
Received: from [192.168.1.105] (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c6ee49dsm624648366b.105.2025.03.02.01.16.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Mar 2025 01:16:39 -0800 (PST)
Message-ID: <4502b578-96e6-49e0-8f3b-54f6e5640c55@gmail.com>
Date: Sun, 2 Mar 2025 11:16:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/8] dt-bindings: phy: add
 samsung,exynos2200-usbcon-phy schema file
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Abel Vesa <abel.vesa@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250223122227.725233-1-ivo.ivanov.ivanov1@gmail.com>
 <20250223122227.725233-4-ivo.ivanov.ivanov1@gmail.com>
 <20250224-curly-cyber-spaniel-efdc39@krzk-bin>
 <a4f63721-d094-4eda-b68a-6ef62ff54680@gmail.com>
 <c8184542-5dab-4403-bee4-867810397ae4@kernel.org>
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <c8184542-5dab-4403-bee4-867810397ae4@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250302_011643_481134_FD2B0BAC 
X-CRM114-Status: GOOD (  28.40  )
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

T24gMi8yNS8yNSAxMDoxMSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiAyNC8wMi8y
MDI1IDExOjQ4LCBJdmF5bG8gSXZhbm92IHdyb3RlOgo+PiBPbiAyLzI0LzI1IDEwOjU2LCBLcnp5
c3p0b2YgS296bG93c2tpIHdyb3RlOgo+Pj4gT24gU3VuLCBGZWIgMjMsIDIwMjUgYXQgMDI6MjI6
MjJQTSArMDIwMCwgSXZheWxvIEl2YW5vdiB3cm90ZToKPj4+PiBUaGUgRXh5bm9zMjIwMCBTb0Mg
aGFzIGEgVVNCIGNvbnRyb2xsZXIgUEhZLCB3aGljaCBhY3RzIGFzIGFuCj4+Pj4gaW50ZXJtZWRp
YXJ5IGJldHdlZW4gYSBVU0IgY29udHJvbGxlciAodHlwaWNhbGx5IERXQzMpIGFuZCBvdGhlciBQ
SFlzCj4+Pj4gKFVUTUksIFBJUEUzKS4gQWRkIGEgZHQtYmluZGluZyBzY2hlbWEgZm9yIGl0Lgo+
Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogSXZheWxvIEl2YW5vdiA8aXZvLml2YW5vdi5pdmFub3Yx
QGdtYWlsLmNvbT4KPj4+PiAtLS0KPj4+PiAgLi4uL3BoeS9zYW1zdW5nLGV4eW5vczIyMDAtdXNi
Y29uLXBoeS55YW1sICAgIHwgNzYgKysrKysrKysrKysrKysrKysrKwo+Pj4+ICAxIGZpbGUgY2hh
bmdlZCwgNzYgaW5zZXJ0aW9ucygrKQo+Pj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1zdW5nLGV4eW5vczIyMDAtdXNiY29uLXBo
eS55YW1sCj4+PiBZb3UgaGF2ZSB1bmRvY3VtZW50ZWQgZGVwZW5kZW5jaWVzIHdoaWNoIHByZXZl
bnQgbWVyZ2luZyB0aGlzIGZpbGUuCj4+PiBGaXJzdCwgZGVwZW5kZW5jaWVzIGhhdmUgdG8gYmUg
Y2xlYXJseSBleHByZXNzZWQuCj4+IFRoZXkgYXJlLCBpbiB0aGUgY292ZXIgbGV0dGVyLgo+IFdo
ZXJlPyBJIHJlYWQgaXQgdHdpY2UuIERlcGVuZGVuY2llcyBpcyB0aGUgbW9zdCBpbXBvcnRhbnQg
dGhpbmcgYW5kCj4gc2hvdWxkIHNjcmVhbSBhdCBiZWdpbm5pbmcgb2YgdGhlIGNvdmVyIGxldHRl
ciwgc28gaWYgeW91IGJ1cnkgdGhlbQo+IHNvbWV3aGVyZSBkZWVwIGl0IGFsc28gd291bGQgbm90
IG1hdHRlciAtIGp1c3QgbGlrZSB0aGV5IHdlcmUgbWlzc2luZy4KPgo+Pj4gU2Vjb25kLCB5b3Ug
c2hvdWxkCj4+PiByYXRoZXIgZGVjb3VwbGUgdGhlIGNvZGUgZnJvbSBoZWFkZXIgZGVwZW5kZW5j
aWVzLCBvdGhlcndpc2UgdGhpcyBjYW5ub3QKPj4+IGJlIG1lcmdlZCBmb3IgY3VycmVudCByZWxl
YXNlIChqdXN0IHVzZSBjbG9ja3Mgd2l0aCBsb25nIG5hbWVzLCB3aXRob3V0IElEcykuCj4+IFN1
cmUKPgo+Pj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGh5L3NhbXN1bmcsZXh5bm9zMjIwMC11c2Jjb24tcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsZXh5bm9zMjIwMC11c2Jjb24tcGh5LnlhbWwK
Pj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+Pj4+IGluZGV4IDAwMDAwMDAwMC4uN2Q4NzllYzhi
Cj4+Pj4gLS0tIC9kZXYvbnVsbAo+Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvc2Ftc3VuZyxleHlub3MyMjAwLXVzYmNvbi1waHkueWFtbAo+Pj4+IEBAIC0w
LDAgKzEsNzYgQEAKPj4+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAgT1Ig
QlNELTItQ2xhdXNlKQo+Pj4+ICslWUFNTCAxLjIKPj4+PiArLS0tCj4+Pj4gKyRpZDogaHR0cDov
L2RldmljZXRyZWUub3JnL3NjaGVtYXMvcGh5L3NhbXN1bmcsZXh5bm9zMjIwMC11c2Jjb24tcGh5
LnlhbWwjCj4+Pj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMv
Y29yZS55YW1sIwo+Pj4+ICsKPj4+PiArdGl0bGU6IEV4eW5vczIyMDAgVVNCIGNvbnRyb2xsZXIg
UEhZCj4+Pj4gKwo+Pj4+ICttYWludGFpbmVyczoKPj4+PiArICAtIEl2YXlsbyBJdmFub3YgPGl2
by5pdmFub3YuaXZhbm92MUBnbWFpbC5jb20+Cj4+Pj4gKwo+Pj4+ICtkZXNjcmlwdGlvbjoKPj4+
PiArICBFeHlub3MyMjAwIFVTQiBjb250cm9sbGVyIFBIWSBpcyBhbiBpbnRlcm1lZGlhcnkgYmV0
d2VlbiBhIFVTQiBjb250cm9sbGVyCj4+Pj4gKyAgKHR5cGljYWxseSBEV0MzKSBhbmQgb3RoZXIg
UEhZcyAoVVRNSSwgUElQRTMpLgo+Pj4gSXNuJ3QgdGhpcyB0aGUgc2FtZSBhcyB1c2JkcmQgcGh5
PyBzZWU6IHNhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwKPj4gSXQncyBub3QgKEkgdGhpbmspLiBU
aGVyZSdzIGEgZmV3IHJlYXNvbnMgSSd2ZSBkZWNpZGVkIHRvIG1ha2UgdGhpcyBzZXBhcmF0ZQo+
PiBmcm9tIHRoZSB1c2IzLWRyZC1waHkgYmluZGluZ3MgYW5kIGV4eW5vczUtdXNiZHJkIGRyaXZl
cjoKPj4KPj4gMS4gVGhpcyBQSFkgZG9lcyBub3QgcHJvdmlkZSBVVE1JIGFuZCBQSVBFMyBvbiBp
dHMgb3duLiBUaGVyZSdzIG5vIHR1bmluZwo+IFVTQkRSRCBwaHkgZG9lcyBub3QgcHJvdmlkZSBV
VE1JIGFuZCBQSVBFIG9uIGl0cyBvd24gZWl0aGVyIGlmIHlvdSBsb29rCj4gYXQgZGlhZ3JhbSAt
IHRoZXkgY2FsbCBpdCBwaHkgY29udHJvbGxlci4KClVnaG0uIFdoYXQ/IFNvIGluIG1vc3QgZXh5
bm9zIGNhc2VzLCB0aGVyZSdzIGEgY29tYmluYXRpb24gb2YgbXVsdGlwbGUgcGh5cz8KCj4KPj4g
Zm9yIHRoZW0sIGFuZCBhbGwgdGhhdCBpcyBuZWVkZWQgZnJvbSBpdCBpcyB0byBkaXNhYmxlIEhX
QUNHLCBhc3NlcnQvCj4+IGRlYXNzZXJ0IHJlc2V0IGFuZCBmb3JjZSBidmFsaWQvdmJ1c3ZhbGlk
LiBBZnRlciB0aGF0IFNOUFMgZVVTQjIKPj4gaW5pdGlhbGl6YXRpb24gY2FuIGJlIGRvbmUgYW5k
IFVTQjIgd29ya3MuIElmIHRoZSBVU0JDT04gcGh5IGlzIG5vdCBzZXQKPj4gdXAgYmVmb3JlIHRo
ZSBlVVNCMiBvbmUsIHRoZSBkZXZpY2UgaGFuZ3MsIHNvIHRoZXJlIGlzIGRlZmluaXRlbHkgYQo+
PiBkZXBlbmRhbmN5IGJldHdlZW4gdGhlbS4gRm9yIFBJUEUzIHdlJ2QgbmVlZCB0byBjb250cm9s
IHRoZSBwaXBlMwo+PiBhdHRhY2hpbmcvZGVhdHRhY2hpbmcgYW5kIHRoZW4gaW5pdGlhbGl6ZSB0
aGUgc3lub3BzeXMgVVNCRFAgY29tYm9waHkuCj4gRG9lcyBpdCBtZWFuIHRoZXJlIGlzIG5vIFVT
QiBEUkQgcGh5IGNvbnRyb2xsZXIgYXMgYmVmb3JlPwo+Cj4gQW55d2F5IHRoZSBwcm9ibGVtIGlz
IHlvdSBoYXZlIERXQzMgLT4gUEhZIC0+IFBIWS4gTG9va3Mgb25lIHBoeSB0b28gbWFueS4KClNv
Li4uCgpEV0MzIC0+IFVTQkRSRCAoVVNCQ09OKSAtPiBQSFlzPwoKLi4ud2l0aCB1c2JkcmQgY29u
dHJvbGxlciBjb25uZWN0aW5nIGFuZCBjb250cm9sbGluZyB0aGUgVVNCMiBhbmQgVVNCMwpwaHlz
LCBhcyB3ZWxsIGFzIGR1YWwgcm9sZSBtb2RlPyBXZWxsLCB3aGVyZSBpcyB0aGUgRFJEIHBhcnQg
aW4gdGhlIGV4eW5vczUKZHJpdmVyPwoKSSBndWVzcyBpdCBkb2VzIHBlcmZlY3RseSBmaXQgdGhl
IGpvYiBvZiBhIHVzYmRyZCBjb250cm9sbGVyIHRoZW4gKGlmIGl0CmV2ZW4gZGVhbHMgd2l0aCBE
UkQpLiBCdXQgdGhlbiBhZ2FpbizCoCB0aGlzIGJyaW5ncyB1cCB0d28gcXVlc3Rpb25zOgoxLiBT
aG91bGQgdGhpcyBkcml2ZXIgZXZlbiBiZSBuYW1lZCBleHlub3MyMjAwLXVzYmNvbiBhbmQgbm90
LCBmb3IKZXhhbXBsZSwgZXh5bm9zMjIwMC11c2JkcmQ/CjIuIEFyZSB0aGUgZXh5bm9zNS11c2Jk
cmQgcGh5cyByZWFsbHkgb25seSBVU0JEUkQsIG9yIGRvIHRoZXkgaW1wbGVtZW50ClVTQiBzcGVl
ZCBmdW5jdGlvbmFsaXR5PyBXaGF0IGlzIHRoZSBVVE1JL1BJUEUzIHNldHVwIGZvciB0aGVuPwoK
cHM6IGRlYWxpbmcgd2l0aCB0aGlzIHdpdGhvdXQgYW55IGRvY3VtZW50YXRpb25zIHN1Y2tzLgoK
QmVzdCByZWdhcmRzLApJdmF5bG8KCj4KPgo+PiAyLiBXaXRoIHRoZSB3YXkgaXQncyBtb2RlbGxl
ZCwgd2UgbmVlZCB0byBwYXJzZSBwaGFuZGxlcyBmcm9tIGVVU0IyIGFuZAo+PiBVU0JEUCB0byB0
aGUgY29udHJvbGxlci4gQWRkaW5nIHRoYXQgdG8gdGhlIHVzYmRyZCBkcml2ZXIgd291bGQgYmUu
Li4KPj4gd2VpcmQuIEl0IG1ha2VzIG1vcmUgc2Vuc2UgdG8gbW9kZWwgaXQgYXMgYSBzZXBhcmF0
ZSBkcml2ZXIsIGJlY2F1c2UKPj4gaXQgZnVuY3Rpb25zIGluIGEgZGlmZmVyZW50IHdheS4KPiBK
dXN0IHRvIGJlIGNsZWFyOiB3ZSBkb24ndCB0YWxrIGFib3V0IGRyaXZlcnMgaGVyZS4KPgo+Cj4g
QmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
