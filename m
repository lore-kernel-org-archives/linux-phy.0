Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C3E2C4451C
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 11:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gF70TQHXoAK8DgnLLfGl6Uzu5XwXg1V+70Hn5IWMrzI=; b=g8KI0tiT+QDilq
	yOi3Qz2fQJcfeMbu2yxwtxLK0ozzl8fRMAhQn+CIYjiokvAeB0tBz/E/fUfpG5qEQmRHRoGnSsCdQ
	bW6Tw/JWOHEpVJ65W+Zw96dp2zqh7pQ2AgtW4uqz103icjxmbNjffSko0XTt7z8NYUuRKHiR3d7jW
	dWQPGVBy4uFMa66me6GKMhDKw0r88qeHk8ick+uW0bE06ZIQVjy2I9bExx9DuQcc29EfRxu/v2YfA
	uGGKiGwOvvR3u/EQ7IWor+53f2APUNvFl+1QenCj1w5C0Ne2Z8V2hc1CWCeD4N7xinrFhjGNptRwS
	SBbrgQIY2KcPO+leZ5Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm8aV-00000009JTJ-14QU;
	Tue, 21 Jul 2026 11:24:39 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm8aS-00000009JSd-3Sua
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 11:24:38 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-47f752b3423so1771666f8f.3
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 04:24:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784633075; x=1785237875; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=yeqi4I9sEox7f/jFm6z55uRHVPVe9hY0Yq9/CkVLr7w=;
        b=DlS8/cnTEiTa/pKPzWVVnjZBiYIQbl1jPDhzV+RRcq7YONpln1y194mAzkF23cblHW
         fSPqvqlt7nTGJr89JBGmXVzjC1xLikz5VlsBMgZNfYkZcgpTOpejpQwzr68fvMn4vOax
         P+GAyVD75oKmHBwkb97gD0yx+9Oj0cjF66fRA4yVYOj2UVp37q9pBGC/T1scTfZEsHdR
         lASFT61KgaFB0bhdv3HEJBLQ2cKQL28kThAdPYBnGzQkJ9oH/dOrXA2VfY/5RsuAxDhF
         aBSPB2jllhRC57NJ6TpPPxrjQLCB1B0oJg15o0eoiyCSPprNE/gTLQC/1DejetiseoTO
         HRPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784633075; x=1785237875;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yeqi4I9sEox7f/jFm6z55uRHVPVe9hY0Yq9/CkVLr7w=;
        b=lfnQvaax1o1tmtRREcfJ4hQsmBxlEp0cvpdxzH7YmlwpcLNe1+9hNiqgEuj0pdD8Gg
         PlNo1/bIRm8VkLCSDZv5+r8UWD8Cz3HvnWemKG05W4sp4z4bxLVIIwF3SxmPVPPTLfKk
         GXPhrIOy34RBTdPef5WR/JtRKrQjv5nfzn3KaHAvOBpYSt90QhrXZIxBIWiB7hC9KWxL
         EhDYQisne0fh3UhbEJKNB4ceZl/31eb3UItx9f/MHFUM/6aiP+eLw4/KEiPY+X6qbOL/
         BgGfg3DMxMv/Y0Kbi260nJyBswI9Sin7xfWAHV8w33w3h8FkARHsWtkwIwwYj0M8aj23
         fXpw==
X-Forwarded-Encrypted: i=1; AHgh+RpAgxzmPHJsS+ZgieJs9tsrk5wLGinGWmK22wcQo4jxiaoel3hd0BLin6EPPV5ZTm6i028K5tXeLXQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9/+VNxYf3hR7wlZyzCu9f6hCFjrcfbZtXXIr/T5yBxLk3iTYN
	IxWmdgerQQlAwy01ipdYl08t1Qp0r7XW/2sBYvcOo9Hk1BdX71JL3Zhkd2xT1NQ5go0=
X-Gm-Gg: AR+sD123YBZcBwDzoHcKLERithDYikG4irqG1k/tqFWsUkE1PqF7r3YjPm5661/U75X
	4QwYFzDRlwoMYHt5aB8GV0m0CPiZMNhNSyQcXJ5vYWI9InoMzmMJ/ui21ARKnONYncEbi6Cp/FU
	6afsO48KQvYMsFgj4iYpjolyqE+UCmwoXCiUO0DyAJqc3fHGzjJZdS1LToxM0wZqNCJWOzWDlRO
	rQGHPiWW/P5bjrBJzcgIzS05qVVlCdmDWVdT2upqBr4BY4eMgIL2HA/0dQcHKElUI+6KC6flaTX
	KzF5ibmhoIel3rysIlM5551rFryZg0wrxdSCsh/+mHLW6Ykdm6ZoEJKqIoL+DrIWPWAtqDQFBIs
	cIffNcwjUhBDYamj3UHHK1RAMKbg8k4Uhys70/N7NgeAB9Gr+STLKycBBZCMftwlCX2JZiWlw0g
	g/nBiVSPUGpySmCR8=
X-Received: by 2002:a05:6000:188f:b0:475:f0c2:5afe with SMTP id ffacd0b85a97d-47f6233b1c9mr22668066f8f.52.1784633074549;
        Tue, 21 Jul 2026 04:24:34 -0700 (PDT)
Received: from [192.168.0.101] ([109.76.186.235])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f63e51c33sm32793828f8f.12.2026.07.21.04.24.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2026 04:24:33 -0700 (PDT)
Message-ID: <ec3d6035-d4de-4e38-8c72-b29a04b263ae@linaro.org>
Date: Tue, 21 Jul 2026 12:24:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260720-x1e-csi2-phy-v13-0-160c31958863@linaro.org>
 <20260720-x1e-csi2-phy-v13-1-160c31958863@linaro.org>
 <LyWJAb2qKsAFTMHNJUce9VqoqbkFKUQanb6z8ziA63RYZ1P9jj1XpA83uGPvz9m4QnWvEjJFK8dGD_8EtioHVQ==@protonmail.internalid>
 <0da6d314-bfa9-493a-bcc6-8c3b75751d0c@linaro.org>
 <88ae6662-cb85-4e3a-bbb5-1b536348df34@kernel.org>
 <_t1jiMTX3iIXhUkTDz0Cbh_uZhdUK_Y8vlIwxt1VNRbuKuRnpVCWabal-b4AuFrVaKrDnQSFOWtDn6-VCbS3DA==@protonmail.internalid>
 <345ca98e-09f6-4965-87bb-e64dac096498@linaro.org>
 <c236cf94-a775-4158-88db-9a337c7fa862@kernel.org>
 <e8bc8ade-d699-497e-8c4a-fbdc03fcc549@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <e8bc8ade-d699-497e-8c4a-fbdc03fcc549@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_042436_908596_BD81DD11 
X-CRM114-Status: GOOD (  25.12  )
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

T24gMjEvMDcvMjAyNiAxMjowNSwgVmxhZGltaXIgWmFwb2xza2l5IHdyb3RlOgo+IE9uIDcvMjEv
MjYgMTM6NDcsIEJyeWFuIE8nRG9ub2dodWUgd3JvdGU6Cj4+IE9uIDIxLzA3LzIwMjYgMTA6NTYs
IFZsYWRpbWlyIFphcG9sc2tpeSB3cm90ZToKPj4+IE9uIDcvMjEvMjYgMTI6MzksIEJyeWFuIE8n
RG9ub2dodWUgd3JvdGU6Cj4+Pj4gT24gMjEvMDcvMjAyNiAwOToxNywgVmxhZGltaXIgWmFwb2xz
a2l5IHdyb3RlOgo+Pj4+Pj4gK8KgICIjcGh5LWNlbGxzIjoKPj4+Pj4+ICvCoMKgwqAgY29uc3Q6
IDEKPj4+Pj4+ICvCoMKgwqAgZGVzY3JpcHRpb246Cj4+Pj4+PiArwqDCoMKgwqDCoCBUaGUgc2lu
Z2xlIGNlbGwgc3BlY2lmaWVzIHRoZSBQSFkgb3BlcmF0aW5nIG1vZGUuCj4+Pj4+IFRoaXMgaGFz
IGJlZW4gcmVwb3J0ZWQgYmVmb3JlLCAjcGh5LWNlbGxzIHNoYWxsIGJlIDAsIHRoZSBvcGVyYXRp
b24KPj4+Pj4gbW9kZSBpcyBzZWxlY3RlZCBieSBidXMtdHlwZSBvZiBlbmRwb2ludHMgYXMgaXQg
aXMgZGVzY3JpYmVkIGluCj4+Pj4+IHZpZGVvLWludGVyZmFjZXMueWFtbAo+Pj4+Pgo+Pj4+PiBU
d28gY29tcGV0aW5nIHZhbHVlcyBhcmUgcmVkdW5kYW50IGFuZCBpdCBvcGVucyBhIGRvb3IgdG8g
YSB3cm9uZwo+Pj4+PiBoYXJkd2FyZSBkZXNjcmlwdGlvbiwgdGhlIHRlY2huaWNhbCBkaXNjdXNz
aW9uIGhhcyBub3QgYmVlbiBzdGFydGVkIAo+Pj4+PiB5ZXQuCj4+Pj4gU28gYXMgSSBzYWlkIGJl
Zm9yZSwgSSdtIGZvbGxvd2luZyBSb2IgSGVycmluZydzIGlucHV0IG9uIHRoaXMgYW5kCj4+Pj4g
S3J6eXN6dG9mIGhhcyBnaXZlbiBSQiBmb3IgdGhpcyBiaW5kaW5nLiBBdCB0aGlzIHN0YWdlLCBJ
IGRvbid0IHNlZQo+Pj4+IHNjb3BlIHRvIGNoYW5nZSBpdC4KPj4+Pgo+Pj4+IEFkZGluZyBlbmRw
b2ludHMgd2FzIGFscmVhZHkgYSBjb21wcm9taXNlIHRvIGFkZHJlc3MgeW91ciBmZWVkYmFjaywK
Pj4+PiB3aGljaCBJIGhvcGVkIHdvdWxkIGJyaW5nIHlvdSBvbiBib2FyZCB3aXRoIHRoZSBkZXNp
Z24uCj4+PiBUaGF0J3MgbXkgY29tbWVudCBkYXRlZCBNYXJjaCAyNywgMjAyNiwgYW5kIGl0IHNh
eXMgbW92aW5nIHBoeSB0eXBlCj4+PiBmcm9tIHBoeSBjZWxsIHRvIHRoZSBlbmRwb2ludCBwcm9w
ZXJ0eSBleGNsdWRlcyB0aGUgbmVlZCB0byBzZXQgYW55Cj4+PiBwaHkgY2VsbHM6Cj4+Pgo+Pj4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtYXJtLW1zbS9lMzdjZTQzOC0xMmM3LTQ2MmQt
Cj4+PiBiMmJjLTEzNTFiZTYyYjgwNkBsaW5hcm8ub3JnLwo+Pj4KPj4+IFRoZSB0ZWNobmljYWwg
Y29tbWVudCBpcyBsZWZ0IHVucmVzcG9uZGVkIHNvIGZhciBzaW5jZSB0aGVuLgo+Pj4KPj4+IFNp
bmNlIHRoZXJlIGlzIG5vIGV4cGVjdGVkIHBoeSBjZWxscyB0byBnZXQgb24gY29uc3VtZXIncyBz
aWRlLCBhbmQKPj4+IHNpbmNlIHRoZXJlIGlzIGFub3RoZXIgbGluayBiZXR3ZWVuIENTSVBIWSBh
bmQgQ1NJRCBkZXNjcmliZWQgaW4KPj4+IHZpZGVvLWludGVyZmFjZXMueWFtbCwgYW55IGtpbmQg
b2YgZGVwZW5kZW5jeSBvZiB0aGlzIElQIG9uIHBoeSBjYW4KPj4+IGJlIGp1c3QgcmVtb3ZlZCwg
d2hpY2ggc2VydmVzIHRoZSBwdXJwb3NlIG9mIGhhcmR3YXJlIGRlc2NyaXB0aW9uCj4+PiBzaW1w
bGlmaWNhdGlvbi4KPj4KPj4gUm9iJ3MgdjEgZmVlZGJhY2sgd2FzIGNvbnN1bWVyLWRlY2lkZXMt
bW9kZSB2aWEgdGhlIGNlbGw7IEtyenlzenRvZiBoYXMKPj4gUi1iJ2QgdGhlIGJpbmRpbmcgd2l0
aCBjZWxscz0xLgo+IAo+IFVuZm9ydHVuYXRlbHkgdGhpcyBpcyBub3QgYSB0ZWNobmljYWwgZGlz
Y3Vzc2lvbiB0byBtb3ZlIGZvcndhcmQKPiBhIGJldHRlciBoYXJkd2FyZSBkZXNjcmlwdGlvbi4K
PiAKPj4gSSdtIGhhcHB5IHRvIGxvY2sgZG93biB0aGlzIGJpbmRpbmcgYXMtaXMgb24gdGhhdCBi
YXNpcy4KPj4KPj4gQXJlIHlvdSBhcmd1aW5nIGFib3V0IHBoeS1jZWxscyBvciBhcmUgeW91IGFj
dHVhbGx5IGFyZ3VpbmcgdGhlIGVudGlyZQo+PiBpbnN0YW50aWF0aW9uIG9mIFF1YWxjb21tIE1J
UEkgQ1NJMiBhcyBhIHN0YW5kYWxvbmUgZ2VuZXJpYyBkcml2ZXIgaW4KPj4gZHJpdmVycy9waHkg
PyBJdHMgbm90IHRoZSBzYW1lIGRlYmF0ZSBhdCBhbGwuCj4gCj4gU28gZmFyIEkgZG9uJ3QgcmV2
aWV3IHRoZSBkcml2ZXIsIG9ubHkgQ1NJUEhZIElQIGhhcmR3YXJlIGRlc2NyaXB0aW9uLgo+IAo+
IEluIHRoZSBjdXJyZW50IHZlcnNpb24gb2YgdGhlIGhhcmR3YXJlIGRlc2NyaXB0aW9uIG9uZSBt
YXkgZmluZCB0aGF0Cj4gdGhlIGV4cGxvaXRlZCAndmlkZW8taW50ZWZhY2VzJyBpbnRlcmZhY2Ug
Y29tcGxldGVseSBjb3ZlcnMgdGhlICdwaHlzJwo+IGludGVyZmFjZSBiZXR3ZWVuIENTSVBIWSBh
bmQgQ1NJRCwgcXVpdGUgcHJvYmFibHkgYm90aCBhcmUgbm90IG5lZWRlZAo+IGF0IHRoZSBzYW1l
IHRpbWUsIGFuZCB0aGUgc2ltcGxlciAncGh5cycgY2FuIGJlIHJlbW92ZWQgd2l0aG91dCBhbnkK
PiBsb3NzZXMuIEJ1dCBpZiBpdCBpcyBrZXB0LCB0aGVuIGl0cyBjZWxsIHZhbHVlIGlzIGFueXdh
eSByZWR1bmRhbnQuCj4gCj4+IEFzIHRoZSBDQU1TUyBtYWludGFpbmVyLCBJJ20gZnVsbHkgYWdh
aW5zdCBhZGRpbmcgbW9yZSBpbmxpbmUgbW9ub2xpdGhpYwo+PiBDU0lQSFkgaW5pdCBzZXF1ZW5j
ZXMuIFRoYXQgY291bGQgYmUgcmVwcmVzZW50ZWQgYXMgYSBzZXBhcmF0ZQo+PiBsaW51eC1tZWRp
YSBkcml2ZXIgYnV0LCB0aGVuIHRoYXQgaW1wbGllcyB0aGF0IF9hbGxfIHVwc3RyZWFtIENTSVBI
WQo+PiBkcml2ZXJzIGluIGRyaXZlcnMvcGh5IGFyZSB3cm9uZywgYW5kIEkganVzdCBkb24ndCBh
Y2NlcHQgdGhhdC4KPiAKPiBPdGhlciB0d28gZHJpdmVycyBhcmUgZGlmZmVyZW50IGFuZCBzaG91
bGQgYmUgZXhjbHVkZWQgYXMgZ29vZAo+IHJlZmVyZW5jZXMsIGJvdGggb2YgdGhlbSBsaW5rcyBl
eGFjdGx5IG9uZSBzZW5zb3IgdG8gZXhhY3RseSBvbmUKPiBDU0ktMiBkZWNvZGVyLCBpdCdzIG5v
dCB0aGUgY2FzZSBoZXJlLiBBbHNvIG9uZSBvZiB0aGVzZSB0d28gZHJpdmVycwo+IGhhcyBubyB1
cHN0cmVhbSB1c2Vycy4KPiAKPj4gVGhlIGJpbmRpbmdzIGhhdmUgRFQgbWFpbnRhaW5lciBSQiwg
YW5kIHRoZSBkcml2ZXIgaGFzIFFjb20gZW5naW5lZXIKPj4gdGVzdGVkLWJ5LCByZXZpZXctYnku
Cj4+Cj4+IFZpbm9kLCBLaXNob24gLSBBZ2FpbiwgSSdkIHJlcXVlc3QgdGhpcyBtZXJnZXMgYXMt
aXMuCj4+Cj4gCgpUaGUgZ3JhcGggYW5kIHBoeXMgYXJlIGRpZmZlcmVudCBsYXllcnMsIGVuZHBv
aW50cyBkZXNjcmliZSB0aGUKbWVkaWEgdG9wb2xvZ3ksIHBoeXMgaXMgaG93IENTSUQgY29udHJv
bHMgdGhlIFBIWSB0aHJvdWdoIHRoZSBQSFkKZnJhbWV3b3JrIChwaHlfZ2V0L2NvbmZpZ3VyZS9w
b3dlcl9vbikuCgpSZW1vdmluZyBwaHlzIGRvZXNuJ3Qgc2ltcGxpZnkgdGhlIGRlc2NyaXB0aW9u
LCBpdCByZW1vdmVzIHRoZSBjb250cm9sIAppbnRlcmZhY2Ugd2hpY2ggaXMgdGhlIG1vbm9saXRo
IGFnYWluLgoKV2UgaGF2ZSBtdWx0aXBsZSBleGFtcGxlcyBvZiB0aGlzIG1vZGVsIHVwc3RyZWFt
LCBjZG5zLWRwaHktcnggKyAKdGktY3NpMnJ4IGluLXRyZWUsIHdpdGggdXNlcnMuCgpJJ20gc3Rp
bGwga2lja2luZyB0aGlzIHVwIHRvIFZpbm9kLCBLaXNob24sIHJlcXVlc3Qgc3RhbmRzLgoKTXVs
dGlwbGUgRFQgYW5kIGRyaXZlciB1c2VycyBhcmUgUkIvVGVzdGVkLWJ5IG9uIHRoZSBzY2hlbWEg
YW5kIGRyaXZlciwgCmxvdHMgb2Ygb3RoZXIgd29yayBpcyBnYXRlZC4KCkl0IGlzIHRpbWUgdG8g
bWVyZ2UuCgpQbGVhc2UgYWRqdWRpY2F0ZS4KCi0tLQpib2QKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
