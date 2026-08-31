Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EB12C624A4
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 16:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b4IC0gaasAIurIo9srQX1X9Tmf5/pLSFzegWWIQPrUM=; b=oeuQhTrwJAO5Hb
	eEujvuSVveWgOzvf2NPDrM2V/FEEGeGmYapkm124Vz3U+SfBrdQA97hs4WmJCB9/tWwgSYY/PlFCf
	gcMGOh9oVUKrvVsbPrDPB8BvkVI+V4dfnJs08ZMk6EEyii0CsYRDrxYd45yVhOugTOcJJ+JV49+Ce
	iCDNOM1Ly3qWqiAvcUy9f0z/0H1Wp+u1gc/SlqbkiDFP93Te5HAZF4amw7Qp+KTEA3sNkqaXZpm7C
	nb9rHNXttv5s1foQGL/y/l4tz3hTL8YjSZccpMKHWaSAZqc9ipDCsnxdqEBCqHd2wGaRGXK+qz3ee
	Yupt4CJZsnaoAm4jclbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x14eW-00000009zi3-3mX8;
	Mon, 31 Aug 2026 16:14:32 +0000
Received: from mail-wm1-f42.google.com ([209.85.128.42])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x14eO-00000009zat-1ir3
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 16:14:26 +0000
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-49a97714f5dso28690285e9.0
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 09:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788192862; x=1788797662; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5PvQwBjDDL2BXf/d9OmxMnSy/nZIUGRJicSJQlZ1aI8=;
        b=Tdzi7RHZ41naH9BrfT1Cb9ZsKGpj65207Rk7OiBtEY8IoPI1s8C0jt8Vi0jIWBWyG2
         LrrRguiOGUfPgnNZCIqIkJDphVgGCZHfKokIDES+6oK/DLR6CV0aqqu95M3n/lRdQGlk
         QObOzgiLF3QTBn44vG6Nlx/WX0u5zxeFkl8LNhXt94/AD+59FxuIzp8q2KO2XlUN3kGN
         nTlrbSf0NfGDGMZtCbtnHH5Vr6JaOTGNu7S9rVELpGsCoO/JB0+PSDVunOe9xnwrRIRj
         54aF//DgMTpxwk2Mt7yT8kvltwfSeYN4uRqhtamVYaxtQWtc8yIsDTEwyubY1HDE6dyj
         MqRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788192862; x=1788797662;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5PvQwBjDDL2BXf/d9OmxMnSy/nZIUGRJicSJQlZ1aI8=;
        b=VkGGhVD8iKBvaBIYAogV42OOf4njIzBda0EIt+X9APLbB5AxqL1G0raNtYtQ/Bvfx0
         XD+JSf1lLa0R/p7kJ09yUhZZb5khHjBujeM1TBvy/4eIOT4i8o3LZm1kdTGUe6tZLZJV
         AlsLANIITX6X/3REaMIgsH/7JDcscXV/f1Ih6W7EK+3xrP3cmR6RmUfV7KFMsyFqwoi1
         dgFy6HVtmxMLDpKKH6UWyV2414Hd0n4ppYkQkvP5ZRHFfD/PENA/DmSYWsd1ce2iRirh
         TF4U/YPs2JUppE74DUstGTknLTHGYmAl7RKM23jE37eueLZpNWqSywZoysTdHhM7ddNB
         wXew==
X-Forwarded-Encrypted: i=1; AHgh+RoG9KnB53VhMzeBtDROihH+RQ4Le+HxsqjX4OUvEdLK6vfViEdQrpqIM1dxvIU5n0n+VZf+qNQyRxs=@lists.infradead.org
X-Gm-Message-State: AFuF++k0sTqU/z+FDkUNcCcHN8JD0FivjVtDVEIuTfteNSf+7gLHopPZ
	dJq6Ma3w33O4CH43ASUa/L5uv3aI6uVtxz/P8ca2VkdmRUuFKEO2URz2
X-Gm-Gg: AR+sD11qJ5txohOF0aooPRUPoSngVV5vZriQpaG4sFddVOWmGYAw7hMnYNcPMPmtiWH
	QtgSku2EgPvOytb9L7eefARfhJBXdyswht9mPcXbCQ1RQgFRA6FLVa5ZNpIgXT/GDGUZmgVnFck
	RXVTM9hHerNDjgvNcHFiOOXXXm2Vx93GstR29s+GkyfPv0PfaEi/hAqBk1KF4tiRFdrk7topJpY
	G0rO62Z5NjfhO6NhPAJz6YTc8IKwCoQnDfceF2TrjqjGuWBElEYKfXRdfoLSdk9qD8IlffvYrFL
	my5C4MCwJ7CzxJTehR5bP5A+XQO7O+HV0gpyubW5GyS2/IjI/YWJHXHb1ELQ6m1viHvrkni1fOJ
	EFCflOZo5edOgW59YiW2qIvXtzHgboOo///9iuyf0uPnEoiFPU0XwgEOho7urFszvKBHSobeRBj
	EetNEttIzJDnTbSP5Kyj9Kf+aWJuYUXyQMfnbSNLge9PVr9TkpeIEUi9jEuGl1wp7wR9+R+PnL
X-Received: by 2002:a05:600c:1c27:b0:49c:cfae:34d2 with SMTP id 5b1f17b1804b1-49ccfae35c2mr235659955e9.4.1788192861364;
        Mon, 31 Aug 2026 09:14:21 -0700 (PDT)
Received: from [192.168.1.10] ([95.43.220.235])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-49cd8b9a2efsm89143235e9.3.2026.08.31.09.14.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2026 09:14:20 -0700 (PDT)
Message-ID: <16609718-fc04-4e1e-b63f-e54aafd14eb6@gmail.com>
Date: Mon, 31 Aug 2026 19:14:19 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: omap-usb2: add explicit PHY comparator API
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Johan Hovold <johan@kernel.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260722053618.602702-1-ivo.g.dimitrov.75@gmail.com>
 <apBdFetctMKBH-iT@vaman>
Content-Language: en-GB
From: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
In-Reply-To: <apBdFetctMKBH-iT@vaman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_091424_476856_030B7452 
X-CRM114-Status: GOOD (  16.61  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgpPbiAyNy4wOC4yNiDQsy4gMTg6NTEg0YcuLCBWaW5vZCBLb3VsIHdyb3RlOgo+IE9uIDIyLTA3
LTI2LCAwODozNiwgSXZheWxvIERpbWl0cm92IHdyb3RlOgo+PiBUaGUgZXhpc3Rpbmcgb21hcF91
c2IyX3NldF9jb21wYXJhdG9yKCkgQVBJIGxvY2F0ZXMgdGhlIE9NQVAgVVNCMiBQSFkKPj4gaW5z
dGFuY2UgYnkgY2FsbGluZyB1c2JfZ2V0X3BoeShVU0JfUEhZX1RZUEVfVVNCMiksIGFzc3VtaW5n
IHRoZXJlIGlzIGEKPj4gc2luZ2xlIFVTQjIgUEhZIHJlZ2lzdGVyZWQgaW4gdGhlIHN5c3RlbS4K
Pj4KPj4gVGhpcyBhc3N1bXB0aW9uIG5vIGxvbmdlciBob2xkcyBvbiBzeXN0ZW1zIHdpdGggbXVs
dGlwbGUgVVNCMiBQSFkKPj4gcHJvdmlkZXJzLiBJbiBzdWNoIGNhc2VzLCB0aGUgZ2xvYmFsIGxv
b2t1cCBtYXkgcmV0dXJuIGEgZGlmZmVyZW50IFVTQjIKPj4gUEhZIGluc3RhbmNlLCBjYXVzaW5n
IHRoZSBPTUFQIGRyaXZlciB0byBwZXJmb3JtIGFuIGludmFsaWQgY29udGFpbmVyX29mKCkKPj4g
Y29udmVyc2lvbiB3aGVuIGFjY2Vzc2luZyBpdHMgcHJpdmF0ZSBkYXRhLgo+Pgo+PiBJbnRyb2R1
Y2Ugb21hcF91c2IyX3NldF9waHlfY29tcGFyYXRvcigpLCBhbGxvd2luZyBjYWxsZXJzIHRvIGV4
cGxpY2l0bHkKPj4gc3BlY2lmeSB0aGUgT01BUCBVU0IyIFBIWSBpbnN0YW5jZSB0byBhc3NvY2lh
dGUgd2l0aCBhIHBoeV9jb21wYW5pb24uCj4+IFRoZSBuZXcgaGVscGVyIHZhbGlkYXRlcyB0aGF0
IHRoZSBzdXBwbGllZCBVU0IgUEhZIGlzIGFuIE9NQVAgVVNCMiBQSFkKPj4gYmVmb3JlIGFjY2Vz
c2luZyBpdHMgcHJpdmF0ZSBkYXRhLgo+IAo+IFdlbGwgdGhlIG5hbWUgY2FuIGNhdXNlIGFtYmln
dWl0eSB3aXRoIG9sZCBBUEkuIFNlY29uZCBJIHdvdWxkIGxpa2UgdG8KPiBzZWUgdXNlcnMgb2Yg
dGhpcyBBUEkgYXMgd2VsbAo+IAoKV291bGQgYG9tYXBfdXNiMl9zZXRfY29tcGFyYXRvcl9mb3Jf
cGh5KClgIGJlIGNsZWFyZXI/IE9yIGNvdWxkIHlvdQpzdWdnZXN0IGEgYmV0dGVyIG5hbWU/CgpS
ZWdhcmRpbmcgdGhlIHVzZXIgb2YgdGhlIEFQSSwgbGV0IG1lIHByb3ZpZGUgc29tZSBiYWNrZ3Jv
dW5kLgoKQ3VycmVudGx5LCB0aGUgY3BjYXAtY2hhcmdlciBkcml2ZXIgdXNlcyB0aGUgb2xkIApv
bWFwX3VzYjJfc2V0X2NvbXBhcmF0b3IoKSBBUEkuIE9uIG1hcHBob25lIGRldmljZXMgdGhlcmUg
YXJlIHR3bwpVU0ItUEhZIGRldmljZXMsIHBoeV9vbWFwX3VzYjIgYW5kIHBoeV9jcGNhcF91c2Iu
IFRoZSBvbGQgQVBJIHNlbGVjdHMKdGhlIGZpcnN0IFVTQjIgUEhZIHByb2JlZCwgd2hpY2ggaXMg
bm90IGd1YXJhbnRlZWQgdG8gYmUgdGhlIE9NQVAgUEhZLgoKSSBoYXZlIGFsc28gYWRkZWQgRENQ
IGRldGVjdGlvbiBhbmQgZXh0Y29uIHN1cHBvcnQgdG8gdGhlIENQQ0FQIFBIWSwgYW5kCkknbSB3
b3JraW5nIG9uIHByb3BlciBjaGFyZ2luZyBjdXJyZW50IGxpbWl0aW5nIGluIGNwY2FwLWNoYXJn
ZXIuIEZvciAKdGhhdCwgdGhlIGNoYXJnZXIgZHJpdmVyIG5lZWRzIHRvIGJlIGFibGUgdG8gZXhw
bGljaXRseSBzZWxlY3QgdGhlIE9NQVAKUEhZIGZyb20gRFQgYW5kIHJlZ2lzdGVyIGZvciBpdHMg
UEhZIGV2ZW50cywgaW4gb3JkZXIgdG8gcHJvcGVybHkgbGltaXQKdGhlIGN1cnJlbnQgaW4gY2Fz
ZSBvZiBEQ1AvZ2FkZ2V0L09URyBjb25uZWN0aW9uLgoKV2l0aCB0aGUgRFQgY29uZmlndXJhdGlv
biwgY3BjYXAtY2hhcmdlciBoYXMgdGhlIHNwZWNpZmljIFBIWSBpbnN0YW5jZQphdmFpbGFibGUg
YW5kIGNhbiB1c2UgdGhlIG5ldyBBUEkuIEZvciBsZWdhY3kgY29uZmlndXJhdGlvbnMgd2l0aG91
dCBhClBIWSBzcGVjaWZpZWQgaW4gRFQsIGl0IHdpbGwgY29udGludWUgdG8gdXNlIHRoZSBleGlz
dGluZyBBUEkuCgpUaGUgcmVsZXZhbnQgY2hhbmdlcyBhcmU6CgpEQ1AgZGV0ZWN0aW9uL2V4dGNv
biBzdXBwb3J0IGluIHRoZSBDUENBUCBQSFk6Cmh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDI2Lzcv
MTEvNjAwCgpgY3BjYXAtY2hhcmdlcmAgY2hhbmdlcyAoY3VycmVudGx5IG91dC1vZi10cmVlKToK
aHR0cHM6Ly9naXQubWFlbW8ub3JnL2xlc3RlLXVwc3RyZWFtLWZvcmtzL2Ryb2lkNC1saW51eC9j
b21taXQvMDI2MWNiYjcyNGQ4NzVlZTRhYTJlNWFmMzRjYWVhZDM5ZTVlNDdmYgoKSSBpbml0aWFs
bHkga2VwdCB0aGUgY3BjYXAtY2hhcmdlciBjaGFuZ2Ugc2VwYXJhdGUgc2luY2UgdGhlIHR3bwpw
YXRjaGVzIGxvb2sgc29tZXdoYXQgdW5yZWxhdGVkLiBJIGFsc28gd2FudGVkIHRvIHNlZSB3aGV0
aGVyIHRoZQphcHByb2FjaCBpbiB0aGlzIHBhdGNoIGlzIGFjY2VwdGFibGUgaW4gcHJpbmNpcGxl
IGJlZm9yZSBwcmVwYXJpbmcgdGhlCmNwY2FwLWNoYXJnZXIgY2hhbmdlcyBmb3IgdXBzdHJlYW1p
bmcuCgpXb3VsZCB5b3UgcHJlZmVyIG1lIHRvIHNlbmQgYSBzZXJpZXMgd2l0aCB0aGUgJHN1Ympl
Y3QgcGF0Y2ggYW5kIHRoZQpjcGNhcC1jaGFyZ2VyIGNoYW5nZXMsIGluY2x1ZGluZyB0aGUgcmVx
dWlyZWQgRFQgc2NoZW1hIGNoYW5nZXM/CgpUaGFua3MgYW5kIHJlZ2FyZHMsCkl2bwoKCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
