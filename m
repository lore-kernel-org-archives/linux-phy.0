Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD574D37497
	for <linux-phy@archiver.kernel.org>; Fri,  5 Dec 2025 20:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+BG8bUulXPRUZDiH8q26jfxqDIJcdmYlcIJLWeQ1T+A=; b=eQ+ZC8hNZX4cCD
	zNZrDs/jbMufJynCtruicrUL+HBGCFUKYjVu58FwcXcEiM2vW7aHOepjRg1td5pu5aN2dFCHAdHAJ
	o1IQ9wYMrImOyyKpckVvfQO7yVL3utiRo13Gkh6M3J/hSeTqP4orlLw34IGvcMEXLB3Sa9OAyVZA5
	Qw/XtklnMljfVGgdsBZEDGdrvCeGuNwEMshdPuzzfN7vyDlNd7LNEPX0Vx+2nC7SG04aA8uf5C4Ni
	UIxdGj9USvwQTiMoo6kJDeQUWUlVb/syurzwif05zmX8fhLAFpRoUVZmi6gjaokmxf574wfqPFtYS
	G3UVAEQ2gR3o1nv3B1Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRcHD-0000000A0qv-2lfS;
	Fri, 05 Dec 2025 20:19:39 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRcHB-0000000A0qI-10I1
	for linux-phy@lists.infradead.org;
	Fri, 05 Dec 2025 20:19:38 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-2984dfae0acso46682435ad.0
        for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 12:19:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764965976; x=1765570776; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QvV5ac3UPAUOpNjnIM4GRf8TjdDG2xguqUsq832Ab1Q=;
        b=QSQ29NZn2ittFwo0g7CjEVDEWEzj2pfW5drrz8uYz69XHlfHYypve7L05JxRZ+OpJi
         Uep7xvh+3VcSbHjTbacaxGMpoyip8KRSo1+H3pSn3wQk/5kwRc96khjy3decicgWUcsu
         flpWb5tMYWu8iVnc9MjPFHh4Q7XkC1R8cXWhHK5eUmgD9bd4B+vXBlPXo3UmJTpTr7Bk
         KUyUxFkS6N7hzdVIsLbw87i0TOcTDSL91hj9PH6fyPnt39W7vt01A0sQu79wHRQFfPSD
         cNCDVavu+g2I33QHAeVfvKrsMIPmxnOSPRpq5G1lZaB9BczvcVS9pKdHKtNxtM9bdtKt
         U2Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764965976; x=1765570776;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QvV5ac3UPAUOpNjnIM4GRf8TjdDG2xguqUsq832Ab1Q=;
        b=tNfXBMNSJCbtzvAPXqdili83PaNGzxcRtf3eGIRtB7R1UqVVR+SVj/DitCxDqbaZ5n
         uI26vwrdMt24erKjpeVB8X5teEz7Am2lsPY/SXoL23Il+Zm+Uc2CSuzdHcibouY9dXu1
         wr5VQcVKALgdoA2t1EzaEZ11ZeIx/kGrW2zqbL0dZHnZgz/DZHepwSTK0gbIpLaCZAf3
         BVgIl5wg0+k9sflYj64jy1jCUG4sB8dAz9rkK1ZqOeAb7SpeEwNZmwvriYVKQXHG0nTN
         iufgZBH9dEgv1VjjCzJTfMM1iL20byGoffWjg9N1LmfUXgR/BpCGMmVi3MbIwLBghoop
         iUNA==
X-Forwarded-Encrypted: i=1; AJvYcCUwo0WBOZHoubyqECsxCvuSQi8ubQJzV7NxY7yKLLuDLphVifIgnzO119AtHE/CbduI4O12e1n7JA0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzEZSY8crgyUkYC4/KglZQR60bb/eN0bLMTYbtd6QdExIvZ9Kal
	H2j1IZtrGiRs61zVYGw9Fo3HHttZbArtf/5PnQLxzeNA+JIIt8vcBGKFIlT79kmyowMbEZesOri
	kLLG5OJousqgmtpXjHFjzQtTpyR29+iCMEUyQzL+g
X-Gm-Gg: ASbGnct8DQBIbWH5hGw/YMyZmueBL7tf84c8cCk9QBrblLZ/49N5ancjINGJQvBYLQT
	dCNRHb82htlwESvklyF0WKAREkEP1PCA6kfmNYVink3Lbl3Yecy56FipxmWeLXYdE2IY7Rrm3eB
	uROiMoJDe0leGItFcojDqapc5DDS2c+msPycLOQx4+lTQgdk7cib81tr97my6i0A3wgdisHCqnV
	fd6B4jvRxEzKUUhj3wzL4jBAGFdHYPe14tZluCMlEEVisJz1NQqitNjrsKogb6JOkEqcCQVzm7U
	akityVc4tf8HL/i74uicjmuKqCs=
X-Google-Smtp-Source: AGHT+IGbi66b69isMZCCE2vWfm2l3aWjIU/6Jm7GoDCB7TYGbRrZY7LzGOWLW8ndmCQQy2C2xov9C9hN/n0jZy26kcQ=
X-Received: by 2002:a05:7022:b95:b0:119:e56b:c74a with SMTP id
 a92af1059eb24-11e0315aa31mr278198c88.15.1764965975826; Fri, 05 Dec 2025
 12:19:35 -0800 (PST)
MIME-Version: 1.0
References: <20251205-phyb4-v8-0-c59ea80a4458@google.com> <20251205-phyb4-v8-1-c59ea80a4458@google.com>
 <18eeb1c5-d21b-4505-b6a4-472f6e191864@kernel.org> <CA+zupgwa+m8Pa=+8shORaOA1OO6zoo6zYEojFS2UDuP0doBq7A@mail.gmail.com>
 <f32e0810-56f9-417e-abf6-0cc7b361bd15@kernel.org> <CA+zupgyxQisYBnLj9_3DtcN3R1Ugfv+-p-wimFp-hnqkhrrgyA@mail.gmail.com>
 <988b3fcb-44db-45ca-823b-5ab13206bd04@kernel.org>
In-Reply-To: <988b3fcb-44db-45ca-823b-5ab13206bd04@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Fri, 5 Dec 2025 12:18:59 -0800
X-Gm-Features: AWmQ_bkSdeahcfk9MTu5RJ__-7yt4YnGMQ_a-ehzxXaIp_XrZSBLGUDbWDooSxE
Message-ID: <CA+zupgzi55svWK4gHsFtdQSD9jFKbxHx_0GE2R1R5DafmYyGNA@mail.gmail.com>
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Badhri Jagan Sridharan <badhri@google.com>, Doug Anderson <dianders@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_121937_309970_2EB3F2B6 
X-CRM114-Status: GOOD (  39.67  )
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

T24gRnJpLCBEZWMgNSwgMjAyNSBhdCAxMToyNuKAr0FNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiAwNS8xMi8yMDI1IDIwOjExLCBSb3kgTHVvIHdy
b3RlOgo+ID4gT24gRnJpLCBEZWMgNSwgMjAyNSBhdCAxMDo1MuKAr0FNIEtyenlzenRvZiBLb3ps
b3dza2kgPGtyemtAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPj4KPiA+PiBPbiAwNS8xMi8yMDI1IDE5
OjQ3LCBSb3kgTHVvIHdyb3RlOgo+ID4+PiBPbiBGcmksIERlYyA1LCAyMDI1IGF0IDk6MTPigK9B
TSBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4+Pj4KPiA+
Pj4+IE9uIDA1LzEyLzIwMjUgMDQ6NTQsIFJveSBMdW8gd3JvdGU6Cj4gPj4+Pj4gRG9jdW1lbnQg
dGhlIGRldmljZSB0cmVlIGJpbmRpbmdzIGZvciB0aGUgVVNCIFBIWSBpbnRlcmZhY2VzIGludGVn
cmF0ZWQKPiA+Pj4+PiB3aXRoIHRoZSBEV0MzIGNvbnRyb2xsZXIgb24gR29vZ2xlIFRlbnNvciBT
b0NzLCBzdGFydGluZyB3aXRoIEc1Cj4gPj4+Pj4gZ2VuZXJhdGlvbiAoTGFndW5hKS4gVGhlIFVT
QiBQSFkgb24gVGVuc29yIEc1IGluY2x1ZGVzIHR3byBpbnRlZ3JhdGVkCj4gPj4+Pj4gU3lub3Bz
eXMgUEhZIElQczogdGhlIGVVU0IgMi4wIFBIWSBJUCBhbmQgdGhlIFVTQiAzLjIvRGlzcGxheVBv
cnQgY29tYm8KPiA+Pj4+PiBQSFkgSVAuCj4gPj4+Pj4KPiA+Pj4+PiBEdWUgdG8gYSBjb21wbGV0
ZSBhcmNoaXRlY3R1cmFsIG92ZXJoYXVsIGluIHRoZSBHb29nbGUgVGVuc29yIEc1LCB0aGUKPiA+
Pj4+PiBleGlzdGluZyBTYW1zdW5nL0V4eW5vcyBVU0IgUEhZIGJpbmRpbmcgZm9yIG9sZGVyIGdl
bmVyYXRpb25zIG9mIEdvb2dsZQo+ID4+Pj4+IHNpbGljb25zIHN1Y2ggYXMgZ3MxMDEgYXJlIG5v
IGxvbmdlciBjb21wYXRpYmxlLCBuZWNlc3NpdGF0aW5nIHRoaXMgbmV3Cj4gPj4+Pj4gZGV2aWNl
IHRyZWUgYmluZGluZy4KPiA+Pj4+Pgo+ID4+Pj4+IFNpZ25lZC1vZmYtYnk6IFJveSBMdW8gPHJv
eWx1b0Bnb29nbGUuY29tPgo+ID4+Pj4KPiA+Pj4+IFdoeSBpbnRlbnRpb25hbGx5IGRyb3BwaW5n
IHRoZSB0YWc/IEhvdyBhcmUgeW91IGhhbmRsaW5nIHRoaXMgcGF0Y2hzZXQ/Cj4gPj4+PiBSZXdy
aXRlIGV2ZXJ5IHRpbWUgZnJvbSBzY3JhdGNoPwo+ID4+Pgo+ID4+PiBIaSBLcnp5c3p0b2YsCj4g
Pj4+Cj4gPj4+IEkgZHJvcHBlZCB0aGUgdGFnIGJlY2F1c2UgYSBuZXcgZmlsZSBpcyBiZWluZyBt
b2RpZmllZCBpbiB0aGlzIHZlcnNpb24sCj4gPj4+IEFsdGhvdWdoIGl0J3MganVzdCBNQUlOVEFJ
TkVSIGZpbGUgYnV0IEkgdGhvdWdodCB5b3UgbWlnaHQgYWxzbyB3YW50Cj4gPj4+IHRvIHRha2Ug
YSBsb29rLiBJIHdhc24ndCBzdXJlIGlmIG1vZGlmeWluZyBhIG5ldyBmaWxlIHF1YWxpZmllcyBh
cwo+ID4+PiAic3Vic3RhbnRpYWwiIHNvIEkgZXJyZWQgb24gdGhlIHNpZGUgb2YgY2F1dGlvbi4g
SSBzaG91bGQndmUgY2FsbGVkIGl0Cj4gPj4+IG91dCBzcGVjaWZpY2FsbHkgaW4gdGhlIGNoYW5n
ZSBsb2cuIFNvcnJ5IGZvciB0aGUgaW5jb252ZW5pZW5jZS4KPiA+Pgo+ID4+IDEuIHNvIGp1c3Qg
c3F1ZWV6ZSB0aGF0IGNoYW5nZSBpbnRvIHNlY29uZCBwYXRjaCBhbmQgbm8gbmVlZCB0byBhc2sg
Zm9yCj4gPj4gcmUtcmV2aWV3Cj4gPgo+ID4gVGhhdCdzIGEgZmFpciBwb2ludC4gSSB3aWxsIGJl
IG1vcmUgbWluZGZ1bCBvZiB0aGUgcmV2aWV3IG92ZXJoZWFkCj4gPiBnb2luZyBmb3J3YXJkLgo+
ID4KPiA+PiAyLiBZb3UgZGlkIG5vdCByZWFkIG15IGNvbXBsYWluIGZ1bGx5LCBsb29rOgo+ID4+
Cj4gPj4+Cj4gPj4+IFJlZ2FyZHMsCj4gPj4+IFJveSBMdW8KPiA+Pj4KPiA+Pj4+Cj4gPj4+PiA8
Zm9ybSBsZXR0ZXI+Cj4gPj4+PiBUaGlzIGlzIGEgZnJpZW5kbHkgcmVtaW5kZXIgZHVyaW5nIHRo
ZSByZXZpZXcgcHJvY2Vzcy4KPiA+Pj4+Cj4gPj4+PiBJdCBsb29rcyBsaWtlIHlvdSByZWNlaXZl
ZCBhIHRhZyBhbmQgZm9yZ290IHRvIGFkZCBpdC4KPiA+Pj4+Cj4gPj4+PiBJZiB5b3UgZG8gbm90
IGtub3cgdGhlIHByb2Nlc3MsIGhlcmUgaXMgYSBzaG9ydCBleHBsYW5hdGlvbjoKPiA+Pj4+IFBs
ZWFzZSBhZGQgQWNrZWQtYnkvUmV2aWV3ZWQtYnkvVGVzdGVkLWJ5IHRhZ3Mgd2hlbiBwb3N0aW5n
IG5ldyB2ZXJzaW9ucwo+ID4+Pj4gb2YgcGF0Y2hzZXQsIHVuZGVyIG9yIGFib3ZlIHlvdXIgU2ln
bmVkLW9mZi1ieSB0YWcsIHVubGVzcyBwYXRjaCBjaGFuZ2VkCj4gPj4+PiBzaWduaWZpY2FudGx5
IChlLmcuIG5ldyBwcm9wZXJ0aWVzIGFkZGVkIHRvIHRoZSBEVCBiaW5kaW5ncykuIFRhZyBpcwo+
ID4+Pj4gInJlY2VpdmVkIiwgd2hlbiBwcm92aWRlZCBpbiBhIG1lc3NhZ2UgcmVwbGllZCB0byB5
b3Ugb24gdGhlIG1haWxpbmcKPiA+Pj4+IGxpc3QuIFRvb2xzIGxpa2UgYjQgY2FuIGhlbHAgaGVy
ZS4gSG93ZXZlciwgdGhlcmUncyBubyBuZWVkIHRvIHJlcG9zdAo+ID4+Pj4gcGF0Y2hlcyAqb25s
eSogdG8gYWRkIHRoZSB0YWdzLiBUaGUgdXBzdHJlYW0gbWFpbnRhaW5lciB3aWxsIGRvIHRoYXQg
Zm9yCj4gPj4+PiB0YWdzIHJlY2VpdmVkIG9uIHRoZSB2ZXJzaW9uIHRoZXkgYXBwbHkuCj4gPj4+
Pgo+ID4+Pj4gUGxlYXNlIHJlYWQ6Cj4gPj4+PiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9s
aW51eC92Ni4xMi1yYzMvc291cmNlL0RvY3VtZW50YXRpb24vcHJvY2Vzcy9zdWJtaXR0aW5nLXBh
dGNoZXMucnN0I0w1NzcKPiA+Pj4+Cj4gPj4+PiBJZiBhIHRhZyB3YXMgbm90IGFkZGVkIG9uIHB1
cnBvc2UsIHBsZWFzZSBzdGF0ZSB3aHkgYW5kIHdoYXQgY2hhbmdlZC4KPiA+Pgo+ID4+IFdoZXJl
IGRpZCB5b3UgYWRkcmVzcyB0aGlzPyBZb3UgZHJvcHBlZCB0aGUgdGFnIHNpbGVudGx5Lgo+ID4K
PiA+IFdoeTogYSBuZXcgZmlsZSBpcyBiZWluZyBtb2RpZmllZC4KPiA+IFdoYXQgY2hhbmdlZDog
TUFJTlRBSU5FUgo+ID4gV2hhdCdzIG5vdCBjaGFuZ2VkOgo+ID4gRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BoeS9nb29nbGUsbGdhLXVzYi1waHkueWFtbAo+Cj4gSSBkb24ndCBr
bm93IGlmIHlvdSBzdGlsbCBkaWQgbm90IGdldCB0aGUgcHJvYmxlbSBvciB5b3UgdGhpbmsgdGhh
dCBJCj4gcmVhbGx5IG5lZWQgdGhhdCBjbGVhciBhbnN3ZXIuIFNvIG5vLCBJIGRvIG5vdCBuZWVk
IHRoYXQgY2xlYXIgYW5zd2VyLCBJCj4gdW5kZXJzdG9vZCB3aXRoIGZpcnN0IHJlcGx5LCBidXQg
eW91IGtlcHQgZXhwbGFpbmluZyBpbnN0ZWFkIG9mCj4gYWRtaXR0aW5nIHRoYXQgeW91ciBjaGFu
Z2Vsb2cgbmVlZHMgZml4ZXMuIFNvIEkgc3RpbGwgZG8gbm90IGJlbGlldmUgeW91Cj4gdW5kZXJz
dG9vZCB0aGUgcHJvYmxlbSBoZXJlIGFuZCB5b3UgbWlnaHQgcmVwZWF0IHRoZSBtaXN0YWtlLgoK
SSBhZG1pdHRlZCB0aGF0IG15IGNoYW5nZWxvZyBuZWVkcyBmaXhlcyBpbiBteSBmaXJzdCByZXBs
eS4KIkkgc2hvdWxkJ3ZlIGNhbGxlZCBpdCBvdXQgc3BlY2lmaWNhbGx5IGluIHRoZSBjaGFuZ2Ug
bG9nLiBTb3JyeSBmb3IgdGhlCmluY29udmVuaWVuY2UuIi4KTWF5YmUgeW91IHRoaW5rIEkgZGlk
bid0IHJlYWQgdGhyb3VnaCBiZWNhdXNlIG15IHJlcGx5IHdhcyBwbGFjZWQKYmVmb3JlIHRoZSA8
Zm9ybSBsZXR0ZXI+IHNlY3Rpb24sIGJ1dCB0aGF0J3MgYSBtaXN1bmRlcnN0YW5kaW5nLgpJIGRp
ZCByZWFkIHRocm91Z2ggdGhlIHBhcmFncmFwaCwgdGhhdCdzIHdoeSBJIG1lbnRpb25lZCB0aGUK
Y2hhbmdlbG9nIGluIG15IGZpcnN0IHJlcGx5LgoKSSBhbHNvIG1pc3VuZGVyc3Rvb2QgeW91ciBx
dWVzdGlvbiBvZiAiV2hlcmUgZGlkIHlvdSBhZGRyZXNzCnRoaXM/Ii4gSWYgeW91IHdlcmUgYXNr
aW5nIHdoZXJlIHRoaXMgc2hvdWxkIGhhdmUgYmVlbiBhZGRyZXNzZWQsCm9idmlvdXNseSB0aGUg
YW5zd2VyIGlzIHRvIGFkZHJlc3MgaXQgaW4gdGhlIGNoYW5nZWxvZywKYnV0IEkgdGhvdWdodCB0
aGF0IHdhcyBhbHJlYWR5IG1hZGUgY2xlYXIgaW4gdGhlIGZpcnN0IHJlcGx5IGFuZAp5b3UgbWln
aHQgYmUgYXNraW5nIGZvciBhIGNsZWFyIGFuc3dlci4KCj4KPiBJIHRoaW5rIHlvdSBuZWVkIHNv
bWVvbmUgaW4gR29vZ2xlIHRvIGNvYWNoIGluIHRoaXMgcHJvY2VzcywgYmVjYXVzZSBJCj4gZXZl
biBnYXZlIHlvdSB0aGUgZXhhY3QgbGluayBkZXNjcmliaW5nIHRoZSBwcm9jZXNzIGFuZCB3aGF0
IHdhcwo+IGV4cGVjdGVkLiBJIGV2ZW4gcG9pbnRlZCBzcGVjaWZpYyBwYXJhZ3JhcGgsIHNvIHlv
dSBkb24ndCBuZWVkIHRvIHJlYWQKPiBlbnRpcmUgZmlsZSEKCkkgYXBwcmVjaWF0ZSB5b3UgcG9p
bnRpbmcgb3V0IHRoZSBzcGVjaWZpYyBwYXJhZ3JhcGgsIEkgdW5kZXJzdGFuZAp5b3UncmUgZ29p
bmcgYWJvdmUgYW5kIGJleW9uZCBoZXJlLiBJIGRpZCByZWFkIGFuZCB1bmRlcnN0YW5kCndoYXQg
c2hvdWxkJ3ZlIGJlZW4gZG9uZSBpbnN0ZWFkIGZvciB0aGlzIHBhdGNoLgoKPgo+IEkgYXNzdW1l
IHlvdSB1bmRlcnN0b29kIHdoYXQgc2hvdWxkIGJlIGRvbmUgaW5zdGVhZCBpbiB0aGlzIHBhdGNo
c2V0Lgo+IEFueXdheSwgbXkgcHJldmlvdXMgdGFnIGFwcGxpZXMgaWYgdGhlcmUgd2VyZSBubyBi
aW5kaW5ncyBjaGFuZ2VzLCBidXQgSQo+IHdhc3RlZCB0b28gbXVjaCB0aW1lIGhlcmUgdG8gY2Fy
ZSBhbnltb3JlLiBUaGUgZXhwZWN0YXRpb24gZnJvbSBiaWcKPiBjb21wYW5pZXMgaXMgdGhleSBk
byBub3QgYXNrIGNvbW11bml0eSB0byBjb2FjaCBvbiBiYXNpYyBzdWJtaXNzaW9uCj4gcHJvY2Vz
cy4gSXQncyBxdWl0ZSB1bmZhaXIgdG8gbXkgc3BhcmUsIHBlcnNvbmFsIHRpbWUgYWZ0ZXIgd29y
aywKPiBjb25zaWRlcmluZyBob3cgbXVjaCBiaWcgY29tcGFueSBpcyBtYWtpbmcuIEJpZyBjb21w
YW55IHNob3VsZCBpbnZlc3QgaW4KPiB0aGlzIGNvYWNoaW5nLgo+Cj4KPiBCZXN0IHJlZ2FyZHMs
Cj4gS3J6eXN6dG9mCgpUaGFuayB5b3UgZm9yIHRoZSBmZWVkYmFjay4gSSB1bmRlcnN0YW5kIHlv
dXIgZnJ1c3RyYXRpb24sIGFuZCBJCmFwb2xvZ2l6ZSBmb3IgdGFraW5nIHVwIHlvdXIgdGltZS4g
SSB3aWxsIGJlIHN1cmUgdG8gYmUgbW9yZSB0aG9yb3VnaAppbiB0aGUgZnV0dXJlLgoKVGhhbmtz
LApSb3kgTHVvCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
