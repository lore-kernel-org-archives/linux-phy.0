Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69012C021A4
	for <linux-phy@archiver.kernel.org>; Wed, 26 Feb 2025 05:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yVfph/V7htlvqq/mhZC5iQwBO/h1aiRKVdP59zAVDow=; b=gM4GFKcvpFykgc
	12KzqHbnyeIw9yXn+LDlQ6P3opuebXmepw/LyZrkCvrP+GbsIQkdkDBi5QBkFNkStm10+T/uSvP8q
	qRcb84x3RBHonmP7d3RBUykR1uIRyqmfDepeL5sNhLb3JuQVp7tPlfdc83iv3CLj2iEb93Z4Zruok
	VK+fBE/s7B66UnnpPW2bFxIlJapFhmIZiq+hI6/BNlpH6ZNnK5U4CM83hwHDHP3mA2mpDUB6o+4Pu
	e7rYoU8fioGfHKJKuBqKvOotZSayoZ5XOzEmJ391Xp6K1r2qGtbO/R+qr1XqjMZfoSiieHM+wpiTL
	dcUnGYYo4os2Kw+QZt/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnA1b-00000002RI3-43rl;
	Wed, 26 Feb 2025 05:32:03 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnA1Z-00000002RHQ-2SC8
	for linux-phy@lists.infradead.org;
	Wed, 26 Feb 2025 05:32:02 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-221050f3f00so144851755ad.2
        for <linux-phy@lists.infradead.org>; Tue, 25 Feb 2025 21:32:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740547920; x=1741152720; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cs/FB4vjop09Xx6EiHePqeXJoRbdqusicfo9VoaYw5E=;
        b=P34T7V4s/CO4IYgaD/7cegzEHTVd/EMYnTui8oWHmVpjmfvXEbADythB/tqe9o4Ihs
         D+Qrvy54numS8nOzsFxkBuJleba5roGmtAEWUbhbNceONF81CO2RuB6lLiF6pmmfNVVx
         WGpThXZmYUK/Ng7Vm5W5PUBTbu98MJjJ5jwdUtS1y4yWKzYmOB+0TrmoxRlZ+AnQf3KM
         Tz4UiFK1/igCmKzoaEWZ7s/d0aPb2x+UN9YisfOr2C+qrnYwR9FTKbLTTKosJGSGUXsV
         GlQZHF1hSFKDVQ046/IfK5olbokLuBGhrrAEAJPXAM25Z7OGcyi8mlijG9TttJWgJT/K
         BpnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740547920; x=1741152720;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cs/FB4vjop09Xx6EiHePqeXJoRbdqusicfo9VoaYw5E=;
        b=cnOi/rjCNXRsweWF7z8h6BO0FFujOmJLtCeDUro7a8zutqNRWnbw9g+HvURL6lkygk
         pLUAx4SxJ6PXxj4RIPzQ9MWGWXQ8gV6E6graRN+00w2qzsHJHeObYL4IwJc2JNOuAPPZ
         Omosxs4YIhJd0qVk3anxPKlNR4iA6XeajifI3bSP5rZZEGOqJquSJLdUowpCA4V39xCc
         ZpFm8Y6jzZjoU3W1QB4tXD/ymn/8dsT5NNYKuP/GHBqfd4DaNJfmWh7uaWiC12KbNZpg
         dJhdLewlcprvVzf4QMtP34u6t2MSUMlnH1KYjYh5dFsTDC+/zQMFEdhZMQ203xk7vuwz
         EBXg==
X-Forwarded-Encrypted: i=1; AJvYcCW8/fKd0/4f7fUJXgpDyx73CKr2uwLR7+YjvmEe6DDWPMvEcPC9YeMKrvoHtIPqm/0lHIQ2Kv7GMKM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxeZqSv4m4SO7wzyhwMHf5CxedUbu0jgSqkSlTCRuf6pCQAUhm8
	42zNy72mTh+ajsu79NQ+2c12jEzxN4MichtusZVqvaDTcYnsQQYKBCwQvDN+yA==
X-Gm-Gg: ASbGnctnmShMN6A5gDSHwmXLyLaB/UpqP4OhM9lMiyN/Hf2SXlKNAW5ED0M98MDOvMw
	GbCBSvXLIple6y2k2Efcqq2+vZyRDD31iFl0coEaz26tQ3Za6VH3A5YvSMQ5RdVGT76IjHBlqdg
	mPp8P5leapsn50zBvXQGu7MwyZ+jSu6fjyVKBgVH4gII859xV/ZSwNYSdPWv4Bo1Gj5/RrwaUGK
	EzrfKLGjMLunxfZvERheAYEf3kB2A4//N0IleeWOPNRBzJ2p/n21ZiiGqurFIWb++oyldkdqX5l
	mRVKmLHncvqipYwUACtt+jZTit0aUIsjZ4UZTjJntsfwMwaFayquE3U=
X-Google-Smtp-Source: AGHT+IEPcQAWKYX9SpkFskmh4pTKxjy5wF3kTp/GFxEcYxWygfsPcia+keXfCSwcEiGOT4D3V58cmw==
X-Received: by 2002:a05:6a00:3d48:b0:730:75b1:7218 with SMTP id d2e1a72fcca58-7347918de02mr10524786b3a.16.1740547920456;
        Tue, 25 Feb 2025 21:32:00 -0800 (PST)
Received: from thinkpad ([120.60.72.190])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7347a7f9aafsm2570705b3a.105.2025.02.25.21.31.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 21:32:00 -0800 (PST)
Date: Wed, 26 Feb 2025 11:01:55 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Qiang Yu <quic_qianyu@quicinc.com>,
	"Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, vkoul@kernel.org,
	kishon@kernel.org, p.zabel@pengutronix.de, abel.vesa@linaro.org,
	neil.armstrong@linaro.org, quic_devipriy@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
Message-ID: <20250226053155.5cdzeorzb5jlvdna@thinkpad>
References: <20250224073301.aqbw3gxjnupbejfy@thinkpad>
 <7ffb09cd-9c77-4407-9087-3e789cd8bf44@quicinc.com>
 <ea5de507-1252-4ff3-9b18-40981624afea@oss.qualcomm.com>
 <20250224122439.njrcoyrfsisddoer@thinkpad>
 <eea55dfa-3dd3-488b-958c-cd20e18a7d7d@quicinc.com>
 <20250225081744.3aprpztylrdgs2cl@thinkpad>
 <4a672888-a90e-434c-b494-bb58b91c99a2@quicinc.com>
 <zppwzqdi5xbggurbqho6ivuorvlubldpjw3pyw2fdgrap4nrhp@5otsko6o5cv3>
 <47f5ab83-d25f-4132-83a6-38236575510c@quicinc.com>
 <ophii26vvcogjtvktsexi6ffnug2wi5hjsppyb44uhypk43o5b@t4bbghgatd73>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ophii26vvcogjtvktsexi6ffnug2wi5hjsppyb44uhypk43o5b@t4bbghgatd73>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_213201_629434_6231D687 
X-CRM114-Status: GOOD (  51.72  )
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

T24gV2VkLCBGZWIgMjYsIDIwMjUgYXQgMDc6MTk6MTFBTSArMDIwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiBXZWQsIEZlYiAyNiwgMjAyNSBhdCAxMToxMjoxOEFNICswODAwLCBRaWFu
ZyBZdSB3cm90ZToKPiA+IAo+ID4gT24gMi8yNS8yMDI1IDc6NDYgUE0sIERtaXRyeSBCYXJ5c2hr
b3Ygd3JvdGU6Cj4gPiA+IE9uIFR1ZSwgRmViIDI1LCAyMDI1IGF0IDA2OjA4OjAzUE0gKzA4MDAs
IFFpYW5nIFl1IHdyb3RlOgo+ID4gPiA+IE9uIDIvMjUvMjAyNSA0OjE3IFBNLCBNYW5pdmFubmFu
IFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiA+ID4gPiBPbiBUdWUsIEZlYiAyNSwgMjAyNSBhdCAwNDow
NjoxNlBNICswODAwLCBXZW5iaW4gWWFvIChDb25zdWx0YW50KSB3cm90ZToKPiA+ID4gPiA+ID4g
T24gMi8yNC8yMDI1IDg6MjQgUE0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+ID4g
PiA+ID4gPiBPbiBNb24sIEZlYiAyNCwgMjAyNSBhdCAxMjo0Njo0NFBNICswMTAwLCBLb25yYWQg
RHliY2lvIHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gT24gMjQuMDIuMjAyNSA5OjQ2IEFNLCBXZW5i
aW4gWWFvIChDb25zdWx0YW50KSB3cm90ZToKPiA+ID4gPiA+ID4gPiA+ID4gT24gMi8yNC8yMDI1
IDM6MzMgUE0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+ID4gPiA+ID4gPiA+ID4g
PiBPbiBUaHUsIEZlYiAyMCwgMjAyNSBhdCAwNjoyMjo1M1BNICswODAwLCBXZW5iaW4gWWFvIHdy
b3RlOgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gRnJvbTogUWlhbmcgWXUgPHF1aWNfcWlhbnl1QHF1
aWNpbmMuY29tPgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBT
b21lIFFDT00gUENJZSBQSFlzIHN1cHBvcnQgbm9fY3NyIHJlc2V0LiBVbmxpa2UgQkNSIHJlc2V0
IHdoaWNoIHJlc2V0cyB0aGUKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IHdob2xlIFBIWSAoaGFyZHdh
cmUgYW5kIHJlZ2lzdGVyKSwgbm9fY3NyIHJlc2V0IG9ubHkgcmVzZXRzIFBIWSBoYXJkd2FyZQo+
ID4gPiA+ID4gPiA+ID4gPiA+ID4gYnV0IHJldGFpbnMgcmVnaXN0ZXIgdmFsdWVzLCB3aGljaCBt
ZWFucyBQSFkgc2V0dGluZyBjYW4gYmUgc2tpcHBlZCBkdXJpbmcKPiA+ID4gPiA+ID4gPiA+ID4g
PiA+IFBIWSBpbml0IGlmIFBDSWUgbGluayBpcyBlbmFibGVkIGluIGJvb2x0bG9hZGVyIGFuZCBv
bmx5IG5vX2NzciBpcyB0b2dnbGVkCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBhZnRlciB0aGF0Lgo+
ID4gPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBIZW5jZSwgZGV0ZXJt
aW5lIHdoZXRoZXIgdGhlIFBIWSBoYXMgYmVlbiBlbmFibGVkIGluIGJvb3Rsb2FkZXIgYnkKPiA+
ID4gPiA+ID4gPiA+ID4gPiA+IHZlcmlmeWluZyBRUEhZX1NUQVJUX0NUUkwgcmVnaXN0ZXIuIElm
IGl0J3MgcHJvZ3JhbW1lZCBhbmQgbm9fY3NyIHJlc2V0IGlzCj4gPiA+ID4gPiA+ID4gPiA+ID4g
PiBhdmFpbGFibGUsIHNraXAgQkNSIHJlc2V0IGFuZCBQSFkgcmVnaXN0ZXIgc2V0dGluZyB0byBl
c3RhYmxpc2ggdGhlIFBDSWUKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IGxpbmsgd2l0aCBib290bG9h
ZGVyIC0gcHJvZ3JhbW1lZCBQSFkgc2V0dGluZ3MuCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFFpYW5nIFl1IDxxdWljX3FpYW55dUBx
dWljaW5jLmNvbT4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFdlbmJpbiBZ
YW8gPHF1aWNfd2VuYnlhb0BxdWljaW5jLmNvbT4KPiA+ID4gPiA+ID4gPiA+ID4gPiBTb21lIG5p
dHBpY2tzIGJlbG93Lgo+ID4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiA+ID4g
LS0tCj4gPiA+ID4gPiA+ID4gPiBbLi4uXQo+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4g
PiA+ID4gPiArwqDCoMKgwqAgKiBJbiB0aGlzIHdheSwgbm8gbWF0dGVyIHdoZXRoZXIgdGhlIFBI
WSBzZXR0aW5ncyB3ZXJlIGluaXRpYWxseQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gK8KgwqDCoMKg
ICogcHJvZ3JhbW1lZCBieSBib290bG9hZGVyIG9yIFBIWSBkcml2ZXIgaXRzZWxmLCB3ZSBjYW4g
cmV1c2UgdGhlbQo+ID4gPiA+ID4gPiA+ID4gPiA+IEl0IGlzIHJlYWxseSBwb3NzaWJsZSB0byBo
YXZlIGJvb3Rsb2FkZXIgbm90IHByb2dyYW1taW5nIHRoZSBpbml0IHNlcXVlbmNlIGZvcgo+ID4g
PiA+ID4gPiA+ID4gPiA+IG5vX2NzciByZXNldCBwbGF0Zm9ybXM/IFRoZSBjb21tZW50IHNvdW5k
cyBsaWtlIGl0IGlzIHBvc3NpYmxlLiBCdXQgSSBoZWFyZCB0aGUKPiA+ID4gPiA+ID4gPiA+ID4g
PiBvcHBvc2l0ZS4KPiA+ID4gPiA+ID4gPiA+ID4gUENJZTMgb24gWDFFODAxMDAgUUNQIGlzIGRp
c2FibGVkIGJ5IGRlZmF1bHQgaW4gVUVGSS4gV2UgbmVlZCB0byBlbmFibGUgaXQKPiA+ID4gPiA+
ID4gPiA+ID4gbWFudWFsbHkgaW4gVUVGSSBzaGVsbCBpZiB3ZSB3YW50Lgo+ID4gPiA+ID4gPiA+
ID4gSUlVQyB0aGlzIHdpbGwgbm90IGJlIGEgY29uY2VybiBnb2luZyBmb3J3YXJkLCBhbmQgdGhp
cyBpcyBhIHNwZWNpYWwgY2FzZQo+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gSSdtIHdv
bmRlcmluZyBob3cgbWFueSAqc3BlY2lhbCogY2FzZXMgd2UgbWF5IGhhdmUgdG8gZGVhbCB3aXRo
IGdvaW5nIGZvcndhcmQuCj4gPiA+ID4gPiA+ID4gQW55aG93LCBJIHdvdWxkIHByb3Bvc2UgdG8g
YXRsZWFzdCB0aHJvdyBhbiBlcnJvciBhbmQgZmFpbCBwcm9iZSgpIGlmOgo+ID4gPiA+ID4gPiA+
IAo+ID4gPiA+ID4gPiA+ICogdGhlIHBsYXRmb3JtIGhhcyBub19jc3IgcmVzZXQgQU5ECj4gPiA+
ID4gPiA+ID4gKiBib290bG9hZGVyIGhhcyBub3QgaW5pdGlhbGl6ZWQgdGhlIFBIWSBBTkQKPiA+
ID4gPiA+ID4gPiAqIHRoZXJlIGFyZSBubyBpbml0IHNlcXVlbmNlcyBpbiB0aGUga2VybmVsCj4g
PiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gLSBNYW5pCj4gPiA+ID4gPiA+IEhtbW0sIHJlZ2Fy
ZGxlc3Mgb2Ygd2hldGhlciBpdCdzIGEgc3BlY2lhbCBjYXNlLCB3ZSBjYW4ndCBhc3N1bWUgdGhh
dCBVRUZJCj4gPiA+ID4gPiA+IHdpbGwgZW5hYmxlIHRoZSBQSFkgc3VwcG9ydGluZyBub19jc3Ig
cmVzZXQgb24gYWxsIHBsYXRmb3Jtcy4gSXQncyBhIGJpdAo+ID4gPiA+ID4gPiByaXNreS4gSWYg
d2UgbWFrZSBzdWNoIGFuIGFzc3VtcHRpb24sIHdlIGFsc28gd29uJ3QgbmVlZCB0byBjaGVjayB3
aGV0aGVyCj4gPiA+ID4gPiA+IHRoZSBQSFkgaXMgZW5hYmxlZCBieSBVRUZJIGR1cmluZyBwb3dl
cmluZyBvbi4gV2UganVzdCBuZWVkIHRvIGNoZWNrCj4gPiA+ID4gPiA+IHdoZXRoZXIgbm9fY3Ny
IHJlc2V0IGlzIGF2YWlsYWJsZS4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiBJIGFtIG5vdCBzdXBw
b3J0aXZlIG9mIHRoaXMgYXNzdW1wdGlvbiB0byBiZSBjbGVhci4gV2hpbGUgSSBhbSBPSyB3aXRo
IHJlbHlpbmcKPiA+ID4gPiA+IG9uIG5vX2NzciByZXNldCBhbmQgYm9vdGxvYWRlciBwcm9ncmFt
bWluZyB0aGUgUEhZLCB3ZSBzaG91bGQgYWxzbyBtYWtlIHN1cmUgdG8KPiA+ID4gPiA+IGNhdGNo
IGlmIHRoZSBQSFkgZG9lc24ndCBpbml0aWFsaXplIGl0LiBPdGhlcndpc2UsIHRoZSBkcml2ZXIg
d291bGQgYXNzdW1lIHRoYXQKPiA+ID4gPiA+IHRoZSBQSFkgaXMgd29ya2luZywgYnV0IHRoZSB1
c2VycyB3b24ndCBzZWUgYW55IFBDSWUgZGV2aWNlcy4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBC
dXQgaXQgbWFrZXMgc2Vuc2UgdG8gY2hlY2sgdGhlIGV4c2l0ZW5jZSBvZiBQSFkgc2VucXVlbmNl
LiBIb3cgYWJvdXQKPiA+ID4gPiA+ID4gYWRkaW5nIHRoZSBjaGVjayBpbiBxbXBfcGNpZV9pbml0
LCBpZiBhIFBIWSBzdXBwb3J0cyBub19jc3IgcmVzZXQgYW5kIGlzbid0Cj4gPiA+ID4gPiA+IGlu
aXRpYWxpemVkIGluIFVFRkkgYW5kIHRoZXJlIGlzIG5vIGNmZy0+dGJscywgcmV0dXJuIGVycm9y
IGFuZCBwcmludCBzb21lCj4gPiA+ID4gPiA+IGVycm9yIGxvZyBzbyB0aGF0IHRoZSBQQ0llIGNv
bnRyb2xsZXIgd2lsbCBmYWlsIHRvIHByb2JlLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+IFNvdW5k
cyBnb29kIHRvIG1lLgo+ID4gPiA+IEknbSB3b25kZXJpbmcgaXMgaXQgbmVjZXNzYXJ5IHRvIGFk
ZCB0aGlzIGNoZWNrPyBJbiBjdXJyZW50IFBIWSBkcml2ZXIsCj4gPiA+ID4gZm9yIFBIWSB0aGF0
IGRvZXNuJ3Qgc3VwcG90IG5vX2NzciByZXNldCB0aGVyZSBpcyBhbHNvIG5vIHN1Y2ggY2hlY2su
Cj4gPiA+ID4gSWYgYSBQSFkgc3VwcG9ydHMgbm9fY3NyIHJlc2V0IGFuZCBpc24ndCBpbml0IGlu
IFVFRkkgYW5kIHRoZXJlIGlzIG5vCj4gPiA+ID4gY2ZnLT50YmxzLCB0aGUgd29yc3QgaXNzdWUg
aXMgbGluayB0cmFpbmluZyBmYWlsIGFuZCBQQ0llIGNvbnRyb2xsZXIgd2lsbAo+ID4gPiA+IGFs
c28gZmFpbCB0byBwcm9iZS4gQWRkaW5nIHN1Y2ogY2hlY2sgc2VlbXMgbm90IGNoYW5nZSB0aGUg
cmVzdWx0Lgo+ID4gPiBGYWlsaW5nIHRoZSB0cmFpbmluZyBpcyBhIHJhbmRvbSBlcnJvciB3aGlj
aCBjYW4gbWVhbiBhIGxvdCwgZS5nLiB0aGUKPiA+ID4gbWlzc2luZyB2b2x0YWdlIHJhaWwuIEFu
IGV4cGxpY2l0IGNoZWNrIGlzIGJlbmVmaWNpYWwsIGl0IGhlbHBzCj4gPiA+IGRldmVsb3BlcnMg
KGFuZCB1c2VycykgdG8gYmV0dGVyIHVuZGVyc3RhbmQgdGhlIHJlYXNvbiBvZiB0aGUgZmFpbHVy
ZS4KPiA+IEluIHRoZSBzdHJ1Y3QgcW1wX3BoeV9jZmcsIHRibHMgaXMgbm90IGEgcG9pbnRlciwg
d2UgY2FuJ3QgZGlyZWN0bHkgY2hlY2sKPiA+IGlmIHRibHMgPT0gTlVMTCB0byBkZXRlcm1pbmUg
aWYgdGhlIFBIWSBpbml0IHNlcXVlbmNlIGlzIGF2YWlsYWJsZS4gQ2FuIHdlCj4gPiBhZGQgYSBz
ZXBhcmF0ZSBwYXRjaCB0byBjaGFuZ2UgdGhlIGRlZmluaXRpb24gZnJvbQo+ID4gImNvbnN0IHN0
cnVjdCBxbXBfcGh5X2NmZ190YmxzIHRibHMiIHRvCj4gPiAiY29uc3Qgc3RydWN0IHFtcF9waHlf
Y2ZnX3RibHMgKnRibHMiIGxpa2UgdGxic19yYyBhbmQgdGJsc19lcCwgZXZlbiB0aG91Z2gKPiA+
IHRoaXMgd2lsbCBhZmZlY3QgYWxsIHBsYXRmb3Jtcz8KPiAKPiBPZiBjb3Vyc2Ugbm8uIFRoZXJl
IGlzIG5vIG5lZWQgdG8gaW50cm9kdWNlIGV4dHJhIGluZGlyZWN0aW9uLiBDaGVja2luZwo+IGZv
ciBxbXBfcGh5X2NmZy50YmxzLnNlcmRlc19udW0gc2hvdWxkIGJlIG1vcmUgdGhhbiBlbm91Z2gu
IE5vIG1hdHRlcgo+IHdoYXQsIHRoZSBQSFkgd2l0aCBhIHByb3BlciBjb25maWd1cmF0aW9uIHRh
YmxlcyB3aWxsIGhhdmUgbm9uLWVtcHR5Cj4gU0VSREVTIHRhYmxlLgo+IAoKKzEuIFRoZSBjaGVj
ayBuZWVkcyB0byBiZSBwcmVzZW50IGluIHRoaXMgc2VyaWVzIGl0c2VsZiBhbmQgaXQgbWFrZXMg
YWJzb2x1dGUKc2Vuc2UgdG8gaGF2ZSBpdC4gT3RoZXJ3aXNlLCBpdCB3aWxsIGJlY29tZSBhIGhh
cmQgdG8gZGVidWcgaXNzdWUuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqng
r40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
