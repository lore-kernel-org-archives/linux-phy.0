Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34BA31090229
	for <linux-phy@archiver.kernel.org>; Thu, 19 Mar 2026 13:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gbk3qHo4WLVwkpAgernbdWelX9Ek49hXsYwefRSrFJ4=; b=UyhqO/gl0vbmBY
	rE/EtcggJpq0eH4Z5myKyVqDt4Hy/fTlg1rk4ZiZmt8NcN3zY/KeIv/avfJtrKdzbu0PPJNkFTzH4
	KtPgWo2ePFBnYznTSKqp7SCfZdJXCEC7GykQCeJ+O33mPmy2FwS3UymNu4Bh78o53fMnx1jRQgYFF
	8GkJZ3OODmopIf7YIBE4C4gsY/k58fRKAA55ClqcYBKRjRyvsKuM4lsJVR+pMeAoW80riCUUEuOya
	8qgIQP7gROVsLHcPkRhJrN2DMEB4sk/fov6MbmB1zPjVbzwImxZw83ZF8KaBa4Gu/U1jvhj//+L1t
	Tot/s+jSbwbTta7owY5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Dm4-0000000AiMc-3HTP;
	Thu, 19 Mar 2026 13:50:56 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Dm1-0000000AiLJ-1eX8
	for linux-phy@lists.infradead.org;
	Thu, 19 Mar 2026 13:50:55 +0000
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id C44AC3FE28
	for <linux-phy@lists.infradead.org>; Thu, 19 Mar 2026 13:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1773928250;
	bh=L/j+PNZ0FI8K56+I6MmSwOePj2ibMpgOJ+algsLEe2o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=gmq0jwAt/mcKk1TTVsJ31xwI3GStLHOX6XKM1NhCw3fbXD7RUCY7ktp7anEym3YHS
	 afH0F3SIziUJaMFfA9N/7LByM8W3L4es0f0ft6HAIQMZEOikTrTEiE/TKruaCrItwL
	 bKQFTv+HhJCKQdjKhbAuXzTj880E6drtgHTXPVlPsFUgYEd2hprJkufXqoSPaqU20K
	 wQiz/kAhMoaO0AaGAWcwSe7q1AEOg2Z7FQCJsEazf0EZvptc51HhAnO4d9y7NBP38Y
	 3U6SEQD9B0Ww7x10DtW5HXUsqhC/Gnh22ZqR67/LdVcE+41c3XTItwUpgjfZJnAPZq
	 FEK1oj3YW0qsTVl4ozNLQgiTJl22L84nETSzSODi1xrkUgUCp/nEIl4U+Jxzh5dQTv
	 vcZJSzUL7RJes8xDaHnauwYrM11sR3zxv+ieCyseXw93nhmJBi2zdP4LJUgWpFkbiv
	 XDF/zuGWzBmr3h3U3JJJUjohiCL1sofw7Ea7ei/BarKUVSaNZAhtaya0y9Hdyb6bG4
	 Pr1XhaAnfhaC/vIGbxhgKeAI7AjJwBbDuJx2zzWvtmOW0d+Zag3PJ2D0zuH64bo9wu
	 0aPjTg5l3JXPTBI0xWiCfTUqGPjRSh4VAVN8RKWz4fauV6GAB0wuM3nIQBVQ863qkI
	 fS5R7g6cE5IbqWl+FXfRlkzs=
Received: by mail-ej1-f71.google.com with SMTP id a640c23a62f3a-b9360e9f43bso114755566b.3
        for <linux-phy@lists.infradead.org>; Thu, 19 Mar 2026 06:50:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773928250; cv=none;
        d=google.com; s=arc-20240605;
        b=KCrU4sDaNlzRpRKJPIoEvtJW5CVIAePdyJ38rNiVgVsc9EI2qdijeL3j7vSDsxUQ2x
         qw1HWcSOy78UAqGCdguVx2HHT9aG93VfEwv6+BvBOa5h4/783uJir8BzKf/Dz4ktVvYM
         OYtDZ4LnrktCHKkTfaEcNTAsalbudkiBLpbuU/cR7MHhgDHtVAMq5IMcwI7IgU1esfVk
         jiPohmpmiFXY3mK/BOM2vXR+IweMX6yjaBGB8uTKFT1/adLkaJY2ARaabD59N3vl0C82
         AwZd6smWQ9iQ3hq+Iq6/aJ0RRZxHeFa3WV3erDmmVqA7/3TrCEVmWj9uKQhk8ssHddwy
         wX7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=L/j+PNZ0FI8K56+I6MmSwOePj2ibMpgOJ+algsLEe2o=;
        fh=f3V7KZzSE9iFwh9ppxj3r2VaJUXu6HVMrk9KWFcSoXk=;
        b=EAWxkOiYoKCrAX000liGAHcgF3ORU3XFtCdHgytQMhrwqaHQocZ8JUBdeWERO2oDYb
         5awEYUHjluqQbulM1NlNvdjXmWCVx/c4YiPFsXd8cSLwFTcDp5Y8ZqrQ+Wtfa8TA0Z0i
         EAJ0RtOxfwX1YJMlJcRynXyel7XXh44eo2TXy1qSnivsGpc8WhAnByW7s1dkR9S5ZsF4
         HWlgsgjGHlaSIi7v+7gszrz580vf7zQ+ZpvlU9R+zbHdU+KGsjHvOiYtjqtO09QnvarZ
         gvyext3PC4DYFULkXe6i8+ATx6ehNv8tN5szfJZ5e69FJc0rrjKvruAjBACbhzVgFRTo
         eZNQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773928250; x=1774533050;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=L/j+PNZ0FI8K56+I6MmSwOePj2ibMpgOJ+algsLEe2o=;
        b=hoZ4lBuZ5ZB/xihowNSxzz3PNVNDt9T74fdVACIQ3CGKKqivsFxNnlR55SEk5t6K5W
         lzqQgpcJ+v4g2t6cdbT8gwJcD7Hoit1k8flCDpFezxFaD3toZfOOf6ITPjAqogDgcOxv
         UCrUryhYmFKWTaZLs7+cbnLaWFGMD+Wowkhqwq/YIv5wTsxmjzBKPoUNAdq3iQ262ym1
         2RfNpcfh5fDn3a0rncQ3W+K4e9eBZ5g94ZzZ4QIuB9eo6VKZwW6t82UK4qafUWultwHC
         N+7t5a+dzoMdc26zAoQRoRN3dJ9K0Nxtc0qn5t2nIGFxNLIYLrbUrWxIJ3UNRfSd0eaI
         ZUWg==
X-Forwarded-Encrypted: i=1; AJvYcCWc409IpOFmG8U8jR0K1YiWtjDq4SYx0XUZi1kpSNyeUXqi05r2TWSxaTjwxX7oMpQisSUJqCpadIU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxlWLAhGycrnaDkJuO4rYMW6AwauF0yXP8O7PzT85X0LV+t/zPX
	A20oiS8burc6iN4lRrb0HPPFkCM+FWzsMhF4w5YAjYxCXYYB/KNGWrdl/6fNkHok3sOc0i7ArHg
	iNL0fgnxDH7OtjSyPMifiRWrhW3HZH4LIevwZa1qb54iZPLSKVyoPPF0iZIMyEMths9tXDkBUk+
	wQYxoUccxXA8s4r7HJbL9uX9TLMyeh72mzX+nDF7lCdUiDYeLaYij9HY3zVg==
X-Gm-Gg: ATEYQzxmepacT72sDiIUjhoL/QvKd6r9FA/6Gns9sbDt3DGn/V2FfWLigvtp7h/xcow
	yMHjzGsuR11K18kqJQ3SSOAPJIBDBBJK+Ni0u7eiqTxKlSvvk5kzMLpYOwF2cR2Q0QLeQXSVVyM
	HuDsTZ8PZxhLlI+/7KIG+8zqalxhliG3FrIJEutTQUjWp3+x8/lSdqHbhPVhHRK0/JvJfSLjLVn
	LlNwgp/TJQfzsG4ZJj5GBvJnvNPW0SsUTshGq0=
X-Received: by 2002:a17:906:1d01:b0:b97:6a2a:405b with SMTP id a640c23a62f3a-b97f498e062mr420852366b.37.1773928250214;
        Thu, 19 Mar 2026 06:50:50 -0700 (PDT)
X-Received: by 2002:a17:906:1d01:b0:b97:6a2a:405b with SMTP id
 a640c23a62f3a-b97f498e062mr420848366b.37.1773928249601; Thu, 19 Mar 2026
 06:50:49 -0700 (PDT)
MIME-Version: 1.0
References: <20260313094618.1361418-1-ziyue.zhang@oss.qualcomm.com>
 <20260313164542.GA1405513@bhelgaas> <en5a7jrgpbn4bsmw5qwprugb2qmjkqw2x5eey6jxxu63634duz@b43rhcsqkj3o>
 <abdviJbrluDn2Vrx@baldur> <kqpgjzcxnazjohiop27exget6qrv37wn3csmixt5nmc6d5dkbg@n7qjo6flaabn>
 <abtgaXSv-zRysJqO@baldur> <4byysnjodmlphwcevw5gb2asxbwwwlf526mtpwpkfi6crjxoqb@vyuktezfu2wu>
In-Reply-To: <4byysnjodmlphwcevw5gb2asxbwwwlf526mtpwpkfi6crjxoqb@vyuktezfu2wu>
From: Tobias Heider <tobias.heider@canonical.com>
Date: Thu, 19 Mar 2026 14:50:37 +0100
X-Gm-Features: AaiRm53OOBmjYF3wt3fYYuOja2T2t90m9EZO7Pd32ZcMTQGM6FDTvHdOzk-54EU
Message-ID: <CAARv3RSag8n0=ut9KGm0yALRPVTiyQ+bBBbT+3Vf1sNOCBLbGA@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] arm64: dts: qcom: hamoa: Move PCIe PERST and Wake
 GPIOs to port nodes
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>, 
	Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com, 
	lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com, 
	johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_065053_612033_2BC50EE6 
X-CRM114-Status: GOOD (  45.14  )
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

UmVzZW5kaW5nIGJlY2F1c2UgdGhlIHByZXZpb3VzIG1haWwgZW5kZWQgdXAgYmVpbmcgSFRNTCAo
c29ycnkpCgpPbiBUaHUsIE1hciAxOSwgMjAyNiBhdCA2OjM54oCvQU0gTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIDxtYW5pQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gV2VkLCBNYXIgMTgsIDIwMjYg
YXQgMDk6NDI6NTZQTSAtMDUwMCwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgo+ID4gT24gTW9uLCBN
YXIgMTYsIDIwMjYgYXQgMDg6NTA6MTJBTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdy
b3RlOgo+ID4gPiBPbiBTdW4sIE1hciAxNSwgMjAyNiBhdCAwOTo1MzozM1BNIC0wNTAwLCBCam9y
biBBbmRlcnNzb24gd3JvdGU6Cj4gPiA+ID4gT24gU2F0LCBNYXIgMTQsIDIwMjYgYXQgMDc6NTA6
NTBQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+ID4gPiA+ID4gT24gRnJp
LCBNYXIgMTMsIDIwMjYgYXQgMTE6NDU6NDJBTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3cm90ZToK
PiA+ID4gPiA+ID4gT24gRnJpLCBNYXIgMTMsIDIwMjYgYXQgMDU6NDY6MThQTSArMDgwMCwgWml5
dWUgWmhhbmcgd3JvdGU6Cj4gPiA+ID4gPiA+ID4gQ29tbWl0IDk2MDYwOWIyMmJlNSAoImFybTY0
OiBkdHM6IHFjb206IGhhbW9hOiBNb3ZlIFBIWSwgUEVSU1QsIGFuZCBXYWtlCj4gPiA+ID4gPiA+
ID4gR1BJT3MgdG8gUENJZSBwb3J0IG5vZGVzIGFuZCBhZGQgcG9ydCBOb2RlcyBmb3IgYWxsIFBD
SWUgcG9ydHMiKSBkaWQgbm90Cj4gPiA+ID4gPiA+ID4gY29udmVydCBhbGwgSGFtb2HigJFiYXNl
ZCBwbGF0Zm9ybXMgdG8gdGhlIG5ldyBtZXRob2Qgb2YgZGVmaW5pbmcgUEVSU1QgYW5kCj4gPiA+
ID4gPiA+ID4gV2FrZSBHUElPcyBpbiB0aGUgUENJZSByb290IHBvcnQgbm9kZXMuCj4gPiA+ID4g
PiA+ID4KPiA+ID4gPiA+ID4gPiBXaXRob3V0IHRoZSBjaGFuZ2UgUENJZSBwcm9iZSB3aWxsIGZh
aWwuIFRoZSBwcm9iZSBmYWlsdXJlIGhhcHBlbnMgYmVjYXVzZQo+ID4gPiA+ID4gPiA+IHRoZSBQ
SFkgc3RheXMgaW4gdGhlIGNvbnRyb2xsZXIgbm9kZSB3aGlsZSB0aGUgUEVSU1QvV2FrZSBHUElP
cyB3ZXJlIG1vdmVkCj4gPiA+ID4gPiA+ID4gdG8gdGhlIHBvcnQgbm9kZXMuCj4gPiA+ID4gPiA+
ID4KPiA+ID4gPiA+ID4gPiBUaGlzIGZpeGVzIHByb2JlIGZhaWx1cmVzIHNlZW4gb24gdGhlIGZv
bGxvd2luZyBwbGF0Zm9ybXM6Cj4gPiA+ID4gPiA+ID4gIC0geDEtaHAtb21uaWJvb2steDE0Cj4g
PiA+ID4gPiA+ID4gIC0geDEtbWljcm9zb2Z0LWRlbmFsaQo+ID4gPiA+ID4gPiA+ICAtIHgxZTgw
MTAwLWxlbm92by15b2dhLXNsaW03eAo+ID4gPiA+ID4gPiA+ICAtIHgxZTgwMTAwLW1lZGlvbi1z
cHJjaHJnZC0xNC1zMQo+ID4gPiA+ID4gPiA+ICAtIHgxcDQyMTAwLWxlbm92by10aGlua2Jvb2st
MTYKPiA+ID4gPiA+ID4gPiAgLSB4MS1hc3VzLXplbmJvb2stYTE0Cj4gPiA+ID4gPiA+ID4gIC0g
eDEtY3JkCj4gPiA+ID4gPiA+ID4gIC0geDEtZGVsbC10aGVuYQo+ID4gPiA+ID4gPiA+Cj4gPiA+
ID4gPiA+ID4gRml4ZXM6IDk2MDYwOWIyMmJlNSAoImFybTY0OiBkdHM6IHFjb206IGhhbW9hOiBN
b3ZlIFBIWSwgUEVSU1QsIGFuZCBXYWtlIEdQSU9zIHRvIFBDSWUgcG9ydCBub2RlcyBhbmQgYWRk
IHBvcnQgTm9kZXMgZm9yIGFsbCBQQ0llIHBvcnRzIikKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4g
QXJlIHlvdSBzYXlpbmcgdGhhdCBEVHMgaW4gdGhlIGZpZWxkIGJyb2tlIGJlY2F1c2Ugb2Ygc29t
ZSBrZXJuZWwKPiA+ID4gPiA+ID4gY2hhbmdlPyAgVGhhdCdzIG5vdCBzdXBwb3NlZCB0byBoYXBw
ZW4uICBFdmVuIHRob3VnaCBQSFksIFBFUlNULCBhbmQKPiA+ID4gPiA+ID4gV2FrZSBHUElPcyBz
aG91bGQgYmUgZGVzY3JpYmVkIGluIFJvb3QgUG9ydCBub2RlcyBpbnN0ZWFkIG9mIHRoZSBSb290
Cj4gPiA+ID4gPiA+IENvbXBsZXggbm9kZSBpbiAqZnV0dXJlKiBEVHMsIHRoZSBrZXJuZWwgaXMg
c3RpbGwgc3VwcG9zZWQgdG8gYWNjZXB0Cj4gPiA+ID4gPiA+IHRoZSBvbGQgc3R5bGUgd2l0aCB0
aGVtIGRlc2NyaWJlZCBpbiB0aGUgUm9vdCBDb21wbGV4IG5vZGUuCj4gPiA+ID4gPiA+Cj4gPiA+
ID4gPgo+ID4gPiA+ID4gVGhpcyBpcyBub3QgcmVsYXRlZCB0byB0aGUgZHJpdmVyIGNoYW5nZS4g
VGhlIGRyaXZlciBjb3JyZWN0bHkgcGFyc2VzIGFsbCBSb290Cj4gPiA+ID4gPiBQb3J0IHByb3Bl
cnRpZXMgZWl0aGVyIGluIHRoZSBSb290IENvbXBsZXggbm9kZSAob2xkIGJpbmRpbmcpIG9yIFJv
b3QgUG9ydCBub2RlCj4gPiA+ID4gPiAobmV3IGJpbmRpbmcpLiBCdXQgY29tbWl0IDk2MDYwOWIy
MmJlNSwgbGVmdCBjb252ZXJ0aW5nIG1lbnRpb25lZCBib2FyZCBEVFMgdG8KPiA+ID4gPiA+IHRo
ZSBuZXcgYmluZGluZywgbGVhdmluZyB0aG9zZSBhZmZlY3RlZCBwbGF0Zm9ybXMgaW4gYSBoYWxm
IGJha2VkIHN0YXRlIGkuZS4sCj4gPiA+ID4gPiBzb21lIHByb3BlcnRpZXMgaW4gUkMgbm9kZSBh
bmQgc29tZSBpbiBSb290IFBvcnQgbm9kZS4gRHJpdmVyIGNhbm5vdCBwYXJzZSBzdWNoCj4gPiA+
ID4gPiBjb21iaW5hdGlvbnMsIHNvIGl0IGZhaWxzIGNvcnJlY3RseSBzby4KPiA+ID4gPiA+Cj4g
PiA+ID4KPiA+ID4gPiBBcmUgeW91IHNheWluZyB0aGF0IGFib3ZlIGxpc3RlZCBtYWNoaW5lcyBo
YXMgYnJva2VuIFBDSWUgc3VwcG9ydCBpbgo+ID4gPiA+IHY3LjAtcmM/Cj4gPiA+ID4KPiA+ID4K
PiA+ID4gSSBoYXZlbid0IHZlcmlmaWVkIGl0LCBidXQgSSdtIHByZXR0eSBzdXJlIFBDSWUgaXMg
YnJva2VuIG9uIHRoZXNlIHBsYXRmb3Jtcy4KPiA+ID4KPiA+Cj4gPiBJbiBsaW5lIHdpdGggQmpv
cm4ncyByZXF1ZXN0LCB3ZSBzaG91bGRuJ3QgaGF2ZSB0byBndWVzcy4KPiA+Cj4gPiA+ID4gSXQg
c2VlbXMgdGhpcyBpcyBhIChwYXJ0aWFsKSByZXZlcnQgb2YgOTYwNjA5YjIyYmU1LCBpcyB0aGlz
IGFjdHVhbGx5Cj4gPiA+ID4gZml4aW5nIHRoYXQgY2hhbmdlLCBvciBpcyBpdCBvbmx5IGFwcGxp
Y2FibGUgb25jZSBzb21lIG90aGVyIGNoYW5nZXMgYXJlCj4gPiA+ID4gYXBwbGllZD8KPiA+ID4g
Pgo+ID4gPgo+ID4gPiBUaGlzIGNoYW5nZSBpcyBmaXhpbmcgdGhlIGlzc3VlIGluIHRoZSByZXNw
ZWN0aXZlIGJvYXJkIERUUyBhbmQgaXMgYSBzdGFuZGFsb25lCj4gPiA+IGZpeCBvbiB0b3Agb2Yg
djcuMC1yYzEuCj4gPiA+Cj4gPgo+ID4gU28gOTYwNjA5YjIyYmU1IHdhcyBicm9rZW4gd2hlbiBJ
IG1lcmdlZCBpdD8KPiA+Cj4KPiBCcm9rZW4gb24gdGhlIG1hY2hpbmVzIG1lbnRpb25lZCBpbiB0
aGUgY29tbWl0IG1lc3NhZ2UsIG5vdCBmb3IgYWxsIEhhbW9hCj4gcGxhdGZvcm1zLgo+Cj4gPiBU
aGUgY29tbWl0IG1lc3NhZ2Ugc2F5cyB0aGF0IHRoZSBjb21taXQgd2FzIGluY29tcGxldGUsIGlu
IHRoYXQgaXQKPiA+IGRpZG4ndCBmdWxseSBjb252ZXJ0IGZyb20gdGhlIG9sZCB0byB0aGUgbmV3
IHN0eWxlLCBzbyBpdCBzb3VuZHMgbGlrZQo+ID4gdGhlIG9mZmVuZGluZyBjb21taXQgd2FzIGlu
Y29tcGxldGUgLSBidXQgSSBiZWxpZXZlIHRoZSBvZmZlbmRpbmcgY29tbWl0Cj4gPiB3YXMgYSB3
b3JrYXJvdW5kIGZvciB0aGUgbmV3IHNvbHV0aW9uIG5vdCBiZWluZyBpbiBwbGFjZSBhbmQgdGhp
cyBjb21taXQKPiA+IG1vc3RseSByZXZlcnRzIHRoZSBjaGFuZ2VzIGluIHRoZSBvZmZlbmRpbmcg
Y29tbWl0Lgo+ID4KPgo+IFNvIDk2MDYwOWIyMmJlNSB3YXMgc3VwcG9zZWQgdG8gbW92ZSBhbGwg
dGhlIHBsYXRmb3JtcyBmcm9tIG9sZCBQQ0llIGJpbmRpbmcgdG8KPiBuZXcgZm9yIGdyZWF0ZXIg
Z29vZCwgYnV0IGl0IGFwcGFyZW50bHkgZGVjaWRlZCB0byBkbyBzbyBvbmx5IGZvciBhIHN1YnNl
dCBvZgo+IHRoZSBwbGF0Zm9ybXMgZm9yIHNvbWUgcmVhc29uIHdoaWNoICBkb24ndCBrbm93LiBC
dXQgdGhlIHByb2JsZW0gYXJpc2VzIGR1ZSB0bwo+IDk2MDYwOWIyMmJlNSBjaGFuZ2luZyB0aGUg
aGFtb2EuZHRzaSB0byB0aGUgbmV3IGJpbmRpbmcgd2hpY2ggYWxzbyB3YXJyYW50cyB0aGUKPiBw
bGF0Zm9ybSBEVFMgdG8gYWxzbyBiZSBjaGFuZ2VkIHRvIHRoZSBuZXcgYmluZGluZy4gSWYgd2Ug
b25seSBoYXZlIGVpdGhlciBkdHNpCj4gb3IgZHRzIGNvbnZlcnRlZCBhbmQgbm90IGJvdGggdG8g
dGhlIG5ldyBiaW5kaW5nLCB0aGUgZHJpdmVyIHdpbGwgZ2V0IGNvbmZ1c2VkCj4gYW5kIGZhaWwu
IEFuZCB0aGlzIGlzIHdoYXQgZXhhY3RseSBoYXBwZW5kZWQgZm9yIGJlbG93IG1hY2hpbmVzOgo+
Cj4gIC0geDEtaHAtb21uaWJvb2steDE0Cj4gIC0geDEtbWljcm9zb2Z0LWRlbmFsaQo+ICAtIHgx
ZTgwMTAwLWxlbm92by15b2dhLXNsaW03eAo+ICAtIHgxZTgwMTAwLW1lZGlvbi1zcHJjaHJnZC0x
NC1zMQo+ICAtIHgxcDQyMTAwLWxlbm92by10aGlua2Jvb2stMTYKPiAgLSB4MS1hc3VzLXplbmJv
b2stYTE0Cj4gIC0geDEtY3JkCj4gIC0geDEtZGVsbC10aGVuYQoKSSBjYW4gY29uZmlybSB0aGUg
YnJlYWthZ2UgZm9yIChzb21lIG9mKSB0aGUgbGlzdGVkIGRldmljZXMgb24gVWJ1bnR1LgpXZSBh
cmUgZXhwZXJpbWVudGluZyB3aXRoIDcuMC1yY3MgYWhlYWQgb2Ygb3VyIDI2LjA0IHJlbGVhc2Uu
CgpJJ2xsIHRyeSB0byBjb2xsZWN0IHNvbWUgdGVzdCBmZWVkYmFjayBmb3IgdGhlIGZpeC4KSSdk
IGNlcnRhaW5seSBhcHByZWNpYXRlIHRoaXMgYmVpbmcgaW5jbHVkZWQgYXMgYW4gcmMgZml4IHNp
bmNlCmN1cnJlbnRseSBoYWxmIG9mCnRoZSB4MSBsYXB0b3AgZGV2aWNlcyBhcmUgYnJva2VuLgoK
Pgo+ID4gSW4gb3RoZXIgd29yZHMsIGl0J3Mgbm90IGNsZWFyIHRvIG1lLCBmcm9tIHRoZSBjb21t
aXQgbWVzc2FnZSwgd2h5IHRoaXMKPiA+IGNoYW5nZSBpcyBhIC1yYyBmaXguIFBlcmhhcHMgdGhl
IGF1dGhvciBvZiB0aGUgb2ZmZW5kaW5nIGNvbW1pdCB0cmlja2VkCj4gPiBtZSB0byBtZXJnZSB0
aGF0IG9uZSwgYW5kIHRoYXQncyB3aGF0J3MgYmVpbmcgZml4ZWQ/Cj4gPgo+Cj4gSSB3b3VsZG4n
dCBzYXkgdGhhdCB0aGUgYXV0aG9yIGhhcyB0cmlja2VkLCBidXQgaGUgd2FzIHVuYXdhcmUgb2Yg
dGhlIGZhY3QgdGhhdAo+IGNoYW5naW5nIFNvQyBkdHNpIHdhcnJhbnRzIGNoYW5nZSBpbiBhbGwg
cGxhdGZvcm1zLCBub3QgYSBzdWJzZXQuIEkgd2FudGVkIHRvCj4gY2F0Y2ggdGhlc2Uga2luZCBv
ZiBpc3N1ZXMgd2l0aCBEVCBiaW5kaW5nIHZhbGlkYXRpb24sIHNvIEkgc2VudCBvdXQgYSBzZXJp
ZXMKPiBlYXJsaWVyIFsxXSwgYnV0IGl0IGdvdCBzdHVjay4gSSdsbCBwdXNoIGl0IGZvcndhcmQu
Cj4KPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcGNpLzIwMjUxMTA2LXBjaS1i
aW5kaW5nLXYyLTAtYmViZTkzNDVmYzRiQG9zcy5xdWFsY29tbS5jb20KPgo+ID4gQWxzbywgaXMg
dGhlIGxhY2sgb2YgVGVzdGVkLWJ5IHRlbGxpbmcgdXMgdGhhdCBub2JvZHkgaGFzIHRlc3RlZCBh
bnkgb2YKPiA+IHRoZSB2Ny4wLXJjIG9uIHRoZSA4IGxpc3RlZCBIYW1vYSBkZXZpY2VzPwo+ID4K
Pgo+IEV4YWN0bHkuIE90aGVyd2lzZSwgdGhleSB3b3VsZCd2ZSBzZWVuIHRoZSBmYWlsdXJlIHNv
IG9idmlvdXNseS4KPgo+ID4KPiA+Cj4gPiBJZiBpdCdzIGFjdHVhbGx5IG5lZWRlZCwgY2FuIHdl
IHBsZWFzZSBoYXZlIHRoZSBjb21taXQgbWVzc2FnZSBpbXByb3ZlZAo+ID4gc28gdGhhdCB3ZSBj
YW4gbWVyZ2UgaXQgaW50byAtcmM/Cj4gPgo+Cj4gU3VyZS4gSSdsbCB3b3JrIHdpdGggWml5dWUg
dG8gcmV3b3JkIGl0IHByb3Blcmx5Lgo+Cj4gLSBNYW5pCj4KPiAtLQo+IOCuruCuo+Cuv+CuteCu
o+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KPgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
