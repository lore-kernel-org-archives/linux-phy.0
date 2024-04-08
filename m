Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F422C67861
	for <linux-phy@archiver.kernel.org>; Mon,  8 Apr 2024 14:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IPZE5illqOijfo1UO/GyGC72+V2GhBcj+iwYbzugXk8=; b=n9/LvRIR3ea/eL
	PFYb9UlQs6O3S+BkxNQAkqVRl8Tdc/EvzzMHmG3cUQg3W6pV6awS7S2kH61jNO8WXOjcK1aTcVr79
	2rjnYSZGlmnB5i8Psd6H2KUJ5ZB5ZQIK7qrEhr+fQgB5f56ta7PdcK22uCKQrjO4dB/q2R9idcvYN
	6UpFLHW+e50IxnNJ8gpDe1hLgfWTSIv+Wxjy10SUFAScDkfKT/MwFS2CMQnPXOBrqv9SuUrqcLfUh
	L30zJhGkxpMtK4rhOyAaZKmKEMOPoZwMMjMonioXC7DROpFKBkkgnfMkvLxpC7ehgAC52B23WXIyR
	/5K6ohlmbKKgsZtgQIDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtqJS-0000000FvnB-03Ft;
	Mon, 08 Apr 2024 14:49:34 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtqJO-0000000Fvkd-2wy0
	for linux-phy@lists.infradead.org;
	Mon, 08 Apr 2024 14:49:32 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-41551639550so31742655e9.2
        for <linux-phy@lists.infradead.org>; Mon, 08 Apr 2024 07:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712587761; x=1713192561; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0EE/MOgIxft1vfD//KGXquYTb4qzSH0XjrabPn5Q8lo=;
        b=taoMVRyHG6y2xUcEawkGLIjZkExOiCgVgnp2kB5Ln5WTt7ST1aOIwV547EQuKqMZLW
         q52BsKFUjkWGbCzlx1NzzL99ywLZTtP2kbqVa8NgzVM24j7FUfpgS5oo2leP4Jt2JIDi
         1eU3yBZpP7guxizUu2XGA+IClmHZ60tVj04CcippQdjOaqsx5L7fp/jTw6x+vr+EdsP8
         MfrDdk8KdC7WfU9HcViMgHnQf9pkzGHjFdvUKd9FPd3CK1SeN+KFue8MKYMxcPuzLCVg
         rhCljoKLARBRt6uYcIacbuTn8sEghdtNTXJKy/0ubiwfBIKVg8j8hb4PdVsR0ssSOudE
         nJlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712587761; x=1713192561;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0EE/MOgIxft1vfD//KGXquYTb4qzSH0XjrabPn5Q8lo=;
        b=nNqxZ2sblCiv0QE7gXclHadf/aVBeW/nX6v0StlLPrcSn/SWIK7sZjVjcokncObvf4
         uc9j/R3fA/uVRRQB4ajTeW0HReZ4NwiORgVXC5w5JNaI6QDbAFe2rX1al1Ly1+BlvvGd
         Za7mFDHwcR8k+IeGlUgilQRrTMJ73jT69VrsGzS7Yhe8nzgpQv5WtVbuKcKSVn5a6xVN
         sxMESxG3vLvLnwLHfzBRmlS5xQO1baLUWqM+sj29NefgRIXtUfptXoLDYnRtF1pfYSB8
         ERryLTdfnSIqD5yLlRS5DlwCe+dyKJLr3PEnG+QGECBOkW6gLDTmo+IMJFinMpaUaANU
         3lBg==
X-Forwarded-Encrypted: i=1; AJvYcCVQ+1FyzyHgoSi6c6krVo2IlemlesQBrPPFT/o+gHh5jh+KryeJX+KssBzWY3eEWbd+8ImdBpQSZrCoWbr++v+IrXXeAiAgxSO4nZU9cg==
X-Gm-Message-State: AOJu0YwMHqTMStHw/bDXPKingvEuNF1eu5J31LE/MejNrRsHKXiZ0CVO
	eEOQBiux5/HFSHCnKVeYgL8Pss/DgP5yDV9dfQ9O4oRupqSFbBzQIxKSSv8UAew=
X-Google-Smtp-Source: AGHT+IGG9i5K+adcR32eYKb2R1dhdhIu35XUgoAG2pjKiBFFLAOeBkyufatVzBbZUYaV4XpDPUBWWg==
X-Received: by 2002:a05:600c:3acb:b0:416:7222:8a78 with SMTP id d11-20020a05600c3acb00b0041672228a78mr2201360wms.37.1712587760913;
        Mon, 08 Apr 2024 07:49:20 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id dr20-20020a5d5f94000000b0033ea499c645sm9303171wrb.4.2024.04.08.07.49.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Apr 2024 07:49:20 -0700 (PDT)
Message-ID: <6c2b060b3b32b2da46bafbdc33236c319b6cec62.camel@linaro.org>
Subject: Re: [PATCH 08/17] clk: samsung: gs101: add support for cmu_hsi2
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, mturquette@baylibre.com, 
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
  vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com,  bvanassche@acm.org, s.nawrocki@samsung.com,
 cw00.choi@samsung.com,  jejb@linux.ibm.com, martin.petersen@oracle.com,
 chanho61.park@samsung.com,  ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
Date: Mon, 08 Apr 2024 15:49:18 +0100
In-Reply-To: <20240404122559.898930-9-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
	 <20240404122559.898930-9-peter.griffin@linaro.org>
User-Agent: Evolution 3.50.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_074930_879548_2422D9E2 
X-CRM114-Status: GOOD (  21.54  )
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

SGkgUGV0ZSwKCk9uIFRodSwgMjAyNC0wNC0wNCBhdCAxMzoyNSArMDEwMCwgUGV0ZXIgR3JpZmZp
biB3cm90ZToKPiBDTVVfSFNJMiBpcyB0aGUgY2xvY2sgbWFuYWdlbWVudCB1bml0IHVzZWQgZm9y
IHRoZSBoc2kyIGJsb2NrLgo+IEhTSSBzdGFuZHMgZm9yIEhpZ2ggU3BlZWQgSW50ZXJmYWNlIGFu
ZCBhcyBzdWNoIGl0IGdlbmVyYXRlcwo+IGNsb2NrcyBmb3IgUENJZSwgVUZTIGFuZCBNTUMgY2Fy
ZC4KPiAKPiBUaGlzIHBhdGNoIGFkZHMgc3VwcG9ydCBmb3IgdGhlIG11eGVzLCBkaXZpZGVycywg
YW5kIGdhdGVzIGluCj4gY211X2hzaTIuCj4gCj4gQ0xLX0dPVVRfSFNJMl9IU0kyX0NNVV9IU0ky
X1BDTEsgaXMgbWFya2VkIGFzIENMS19JU19DUklUSUNBTAo+IGFzIGRpc2FibGluZyBpdCBsZWFk
cyB0byBhbiBpbW1lZGlhdGUgc3lzdGVtIGhhbmcuCj4gCj4gQ0xLX0dPVVRfSFNJMl9TWVNSRUdf
SFNJMl9QQ0xLIGlzIGFsc28gbWFya2VkIENMS19JU19DUklUSUNBTC4KPiBBIGhhbmcgaXMgbm90
IG9ic2VydmVkIHdpdGggZmluZSBncmFpbmVkIGNsb2NrIGNvbnRyb2wsIGJ1dAo+IFVGUyBJUCBk
b2VzIG5vdCBmdW5jdGlvbiB3aXRoIHN5c2NvbiBjb250cm9sbGluZyB0aGlzIGNsb2NrCj4ganVz
dCBhcm91bmQgaHNpMl9zeXNyZWcgcmVnaXN0ZXIgYWNjZXNzZXMuCgpXb3VsZCBpdCBtYWtlIHNl
bnNlIHRvIGFkZCB0aGlzIGNsb2NrIHRvIHRoZSAmdWZzXzAgbm9kZSBpbiB0aGUgRFRTCmluc3Rl
YWQ/IFNlZW1zIG1vcmUgbmF0dXJhbCB0aGFuIGEgY2xvY2sgdGhhdCdzIGNvbnN0YW50bHkgZW5h
YmxlZD8KCj4gWy4uLl0KPiAKPiBVcGRhdGVkIHJlZ2V4IGZvciBjbG9jayBuYW1lIG1hbmdsaW5n
Cj4gwqDCoMKgIHNlZCBcCj4gwqDCoMKgwqDCoMKgwqAgLWUgJ3N8XlBMTF9MT0NLVElNRV9QTExf
XChbXl9dXCtcKXxmb3V0X1xMXDFfcGxsfCcgXAo+IMKgwqDCoMKgwqDCoMKgIFwKPiDCoMKgwqDC
oMKgwqDCoCAtZSAnc3xeUExMX0NPTjBfTVVYX0NMS0NNVV9cKFteX11cK1wpX1woLipcKXxtb3V0
X1xMXDFfXDJ8JyBcCj4gwqDCoMKgwqDCoMKgwqAgLWUgJ3N8XlBMTF9DT04wX1BMTF9cKC4qXCl8
bW91dF9wbGxfXExcMXwnIFwKPiDCoMKgwqDCoMKgwqDCoCAtZSAnc3xeQ0xLX0NPTl9NVVhfTVVY
X0NMS19cKC4qXCl8bW91dF9cTFwxfCcgXAo+IMKgwqDCoMKgwqDCoMKgIC1lICcvXlBMTF9DT05b
MS00XV9bXl9dXCtfL2QnIFwKPiDCoMKgwqDCoMKgwqDCoCAtZSAnL15bXl9dXCtfQ01VX1teX11c
K19DT05UUk9MTEVSX09QVElPTi9kJyBcCj4gwqDCoMKgwqDCoMKgwqAgLWUgJy9eQ0xLT1VUX0NP
Tl9CTEtfW15fXVwrX0NNVV9bXl9dXCtfQ0xLT1VUMC9kJyBcCj4gwqDCoMKgwqDCoMKgwqAgXAo+
IMKgwqDCoMKgwqDCoMKgIC1lICdzfF9JUENMS1BPUlR8fCcgXAo+IMKgwqDCoMKgwqDCoMKgIC1l
ICdzfF9SU1ROU1lOQ3x8JyBcCj4gwqDCoMKgwqDCoMKgwqAgLWUgJ3N8X0c0WDJfRFdDX1BDSUVf
Q1RMfHwnIFwKPiDCoMKgwqDCoMKgwqDCoCAtZSAnc3xfRzRYMV9EV0NfUENJRV9DVEx8fCcgXAo+
IMKgwqDCoMKgwqDCoMKgIC1lICdzfF9QQ0lFX1NVQl9DVFJMfHwnIFwKPiDCoMKgwqDCoMKgwqDC
oCAtZSAnc3xfSU5TVF8wfHxnJyBcCj4gwqDCoMKgwqDCoMKgwqAgLWUgJ3N8X0xOMDVMUEV8fCcg
XAo+IMKgwqDCoMKgwqDCoMKgIC1lICdzfF9UTV9XUkFQUEVSfHwnIFwKPiDCoMKgwqDCoMKgwqDC
oCAtZSAnc3xfU0Z8fCcgXAo+IMKgwqDCoMKgwqDCoMKgIFwKPiDCoMKgwqDCoMKgwqDCoCAtZSAn
c3xeQ0xLX0NPTl9ESVZfRElWX0NMS19cKFteX11cK1wpX1woLipcKXxkb3V0X1xMXDFfXDJ8JyBc
Cj4gwqDCoMKgwqDCoMKgwqAgXAo+IMKgwqDCoMKgwqDCoMKgIC1lICdzfF5DTEtfQ09OX0JVRl9D
TEtCVUZfXChbXl9dXCtcKV9cKC4qXCl8Z291dF9cTFwxX1wyfCcgXAo+IMKgwqDCoMKgwqDCoMKg
IC1lICdzfF5DTEtfQ09OX0dBVF9DTEtfQkxLX1woW15fXVwrXClfVUlEX1woLipcKXxnb3V0X1xM
XDFfXDJ8JyBcCj4gwqDCoMKgwqDCoMKgwqAgLWUgJ3N8XmdvdXRfW15fXVwrX1teX11cK19jbXVf
XChbXl9dXCtcKV9wY2xrJHxnb3V0X1wxX1wxX3BjbGt8JyBcCj4gwqDCoMKgwqDCoMKgwqAgLWUg
J3N8XkNMS19DT05fR0FUX0dPVVRfQkxLX1woW15fXVwrXClfVUlEX1woLipcKXxnb3V0X1xMXDFf
XDJ8JyBcCj4gwqDCoMKgwqDCoMKgwqAgLWUgJ3N8XkNMS19DT05fR0FUX0NMS19cKFteX11cK1wp
X1woLipcKXxnb3V0X1xMXDFfY2xrX1xMXDFfXDJ8JyBcCj4gwqDCoMKgwqDCoMKgwqAgXAo+IMKg
wqDCoMKgwqDCoMKgIC1lICcvXlwoRE1ZUUNIXHxQQ0hcfFFDSFx8UVVFVUVcKV8vZCcKClRoYW5r
IHlvdSBmb3IgdGhlIHVwZGF0ZWQgcmVnZXguCgo+IC0tLQo+IMKgZHJpdmVycy9jbGsvc2Ftc3Vu
Zy9jbGstZ3MxMDEuY8KgwqDCoMKgwqDCoMKgwqDCoCB8IDU1OCArKysrKysrKysrKysrKysrKysr
KysrKwo+IMKgaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9nb29nbGUsZ3MxMDEuaCB8wqAgNjMg
KysrCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDYyMSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWdzMTAxLmMgYi9kcml2ZXJzL2Nsay9zYW1zdW5n
L2Nsay1nczEwMS5jCj4gaW5kZXggZDA2NWUzNDNhODVkLi5iOWY4NGM3ZDVjMjIgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9jbGsvc2Ftc3VuZy9jbGstZ3MxMDEuYwo+ICsrKyBiL2RyaXZlcnMvY2xr
L3NhbXN1bmcvY2xrLWdzMTAxLmMKPiBAQCAtMjIsNiArMjIsNyBAQAo+IMKgI2RlZmluZSBDTEtT
X05SX01JU0MJKENMS19HT1VUX01JU0NfWElVX0RfTUlTQ19BQ0xLICsgMSkKPiDCoCNkZWZpbmUg
Q0xLU19OUl9QRVJJQzAJKENMS19HT1VUX1BFUklDMF9TWVNSRUdfUEVSSUMwX1BDTEsgKyAxKQo+
IMKgI2RlZmluZSBDTEtTX05SX1BFUklDMQkoQ0xLX0dPVVRfUEVSSUMxX1NZU1JFR19QRVJJQzFf
UENMSyArIDEpCj4gKyNkZWZpbmUgQ0xLU19OUl9IU0kyCShDTEtfR09VVF9IU0kyX1hJVV9QX0hT
STJfQUNMSyArIDEpCj4gwqAKPiDCoC8qIC0tLS0gQ01VX1RPUCAtLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tICovCj4gwqAKPiBAQCAt
MzQwOSw2ICszNDEwLDU2MCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHNhbXN1bmdfY211X2luZm8g
cGVyaWMxX2NtdV9pbmZvIF9faW5pdGNvbnN0ID0gewo+IMKgCS5jbGtfbmFtZQkJPSAiYnVzIiwK
PiDCoH07Cj4gwqAKPiArLyogLS0tLSBDTVVfSFNJMiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tICovCgpUaGlzIGNvbW1lbnQgaXMgc2hv
cnRlciB0aGF0IGFsbCB0aGUgb3RoZXIgc2ltaWxhciBjb21tZW50cyBpbiB0aGlzIGZpbGUuCgo+
IFsuLi5dCj4gKwo+ICtQTkFNRShtb3V0X2hzaTJfYnVzX3VzZXJfcCkJPSB7ICJvc2NjbGsiLCAi
ZG91dF9jbXVfaHNpMl9idXMiIH07Cj4gK1BOQU1FKG1vdXRfaHNpMl9wY2llX3VzZXJfcCkJPSB7
ICJvc2NjbGsiLCAiZG91dF9jbXVfaHNpMl9wY2llIiB9Owo+ICtQTkFNRShtb3V0X2hzaTJfdWZz
X2VtYmRfdXNlcl9wKSA9IHsgIm9zY2NsayIsICJkb3V0X2NtdV9oc2kyX3Vmc19lbWJkIiB9Owo+
ICtQTkFNRShtb3V0X2hzaTJfbW1jX2NhcmRfdXNlcl9wKSA9IHsgIm9zY2NsayIsICJkb3V0X2Nt
dV9oc2kyX21tY19jYXJkIiB9OwoKQ2FuIHlvdSBtYWtlIHRoZXNlIGFscGhhYmV0aWNhbCwgdG9v
LCBwbGVhc2UsIHdoaWNoIHdvdWxkIGFsc28gbWF0Y2ggdGhlaXIgdXNhZ2UKYmVsb3c6Cgo+ICsK
PiArc3RhdGljIGNvbnN0IHN0cnVjdCBzYW1zdW5nX211eF9jbG9jayBoc2kyX211eF9jbGtzW10g
X19pbml0Y29uc3QgPSB7Cj4gKwlNVVgoQ0xLX01PVVRfSFNJMl9CVVNfVVNFUiwgIm1vdXRfaHNp
Ml9idXNfdXNlciIsIG1vdXRfaHNpMl9idXNfdXNlcl9wLAo+ICsJwqDCoMKgIFBMTF9DT04wX01V
WF9DTEtDTVVfSFNJMl9CVVNfVVNFUiwgNCwgMSksCj4gKwlNVVgoQ0xLX01PVVRfSFNJMl9NTUNf
Q0FSRF9VU0VSLCAibW91dF9oc2kyX21tY19jYXJkX3VzZXIiLAo+ICsJwqDCoMKgIG1vdXRfaHNp
Ml9tbWNfY2FyZF91c2VyX3AsIFBMTF9DT04wX01VWF9DTEtDTVVfSFNJMl9NTUNfQ0FSRF9VU0VS
LAo+ICsJwqDCoMKgIDQsIDEpLAo+ICsJTVVYKENMS19NT1VUX0hTSTJfUENJRV9VU0VSLCAibW91
dF9oc2kyX3BjaWVfdXNlciIsCj4gKwnCoMKgwqAgbW91dF9oc2kyX3BjaWVfdXNlcl9wLCBQTExf
Q09OMF9NVVhfQ0xLQ01VX0hTSTJfUENJRV9VU0VSLAo+ICsJwqDCoMKgIDQsIDEpLAo+ICsJTVVY
KENMS19NT1VUX0hTSTJfVUZTX0VNQkRfVVNFUiwgIm1vdXRfaHNpMl91ZnNfZW1iZF91c2VyIiwK
PiArCcKgwqDCoCBtb3V0X2hzaTJfdWZzX2VtYmRfdXNlcl9wLCBQTExfQ09OMF9NVVhfQ0xLQ01V
X0hTSTJfVUZTX0VNQkRfVVNFUiwKPiArCcKgwqDCoCA0LCAxKSwKPiArfTsKPiArCj4gK3N0YXRp
YyBjb25zdCBzdHJ1Y3Qgc2Ftc3VuZ19nYXRlX2Nsb2NrIGhzaTJfZ2F0ZV9jbGtzW10gX19pbml0
Y29uc3QgPSB7Cj4gKwoKSGVyZSBhbmQgYmVsb3c6IGFsbCB0aGVzZSBleHRyYSBlbXB0eSBsaW5l
cyBhcmUgbm90IG5lZWRlZC4KCj4gKwlHQVRFKENMS19HT1VUX0hTSTJfUENJRV9HRU40XzFfUENJ
RV8wMDNfUEhZX1JFRkNMS19JTiwKPiArCcKgwqDCoMKgICJnb3V0X2hzaTJfcGNpZV9nZW40XzFf
cGNpZV8wMDNfcGh5X3JlZmNsa19pbiIsCj4gKwnCoMKgwqDCoCAibW91dF9oc2kyX3BjaWVfdXNl
ciIsCj4gKwnCoMKgwqDCoCBDTEtfQ09OX0dBVF9DTEtfQkxLX0hTSTJfVUlEX1BDSUVfR0VONF8x
X0lQQ0xLUE9SVF9QQ0lFXzAwM19QQ0lFX1NVQl9DVFJMX0lOU1RfMF9QSFlfUkVGQ0xLX0lOLAo+
ICsJwqDCoMKgwqAgMjEsIDAsIDApLAo+ICsKPiArCUdBVEUoQ0xLX0dPVVRfSFNJMl9QQ0lFX0dF
TjRfMV9QQ0lFXzAwNF9QSFlfUkVGQ0xLX0lOLAo+ICsJwqDCoMKgwqAgImdvdXRfaHNpMl9wY2ll
X2dlbjRfMV9wY2llXzAwNF9waHlfcmVmY2xrX2luIiwKPiArCcKgwqDCoMKgICJtb3V0X2hzaTJf
cGNpZV91c2VyIiwKPiArCcKgwqDCoMKgIENMS19DT05fR0FUX0NMS19CTEtfSFNJMl9VSURfUENJ
RV9HRU40XzFfSVBDTEtQT1JUX1BDSUVfMDA0X1BDSUVfU1VCX0NUUkxfSU5TVF8wX1BIWV9SRUZD
TEtfSU4sCj4gKwnCoMKgwqDCoCAyMSwgMCwgMCksCj4gKwo+ICsJR0FURShDTEtfR09VVF9IU0ky
X1NTTVRfUENJRV9JQV9HRU40QV8xX0FDTEssCj4gKwnCoMKgwqDCoCAiZ291dF9oc2kyX3NzbXRf
cGNpZV9pYV9nZW40YV8xX2FjbGsiLAo+ICsJwqDCoMKgwqAgIm1vdXRfaHNpMl9idXNfdXNlciIs
CgpUaGUgdHdvIHN0cmluZ3MgZml0IG9uIHRoZSBzYW1lIGxpbmUuCgo+ICsJwqDCoMKgwqAgQ0xL
X0NPTl9HQVRfQ0xLX0JMS19IU0kyX1VJRF9TU01UX1BDSUVfSUFfR0VONEFfMV9JUENMS1BPUlRf
QUNMSywKPiArCcKgwqDCoMKgIDIxLCAwLCAwKSwKPiArCj4gKwlHQVRFKENMS19HT1VUX0hTSTJf
U1NNVF9QQ0lFX0lBX0dFTjRBXzFfUENMSywKPiArCcKgwqDCoMKgICJnb3V0X2hzaTJfc3NtdF9w
Y2llX2lhX2dlbjRhXzFfcGNsayIsCj4gKwnCoMKgwqDCoCAibW91dF9oc2kyX2J1c191c2VyIiwK
CmRpdG8uCgo+IFsuLi5dCj4gKwkvKiBEaXNhYmxpbmcgdGhpcyBjbG9jayBtYWtlcyB0aGUgc3lz
dGVtIGhhbmcuIE1hcmsgdGhlIGNsb2NrIGFzIGNyaXRpY2FsLiAqLwo+ICsJR0FURShDTEtfR09V
VF9IU0kyX0hTSTJfQ01VX0hTSTJfUENMSywKPiArCcKgwqDCoMKgICJnb3V0X2hzaTJfaHNpMl9j
bXVfaHNpMl9wY2xrIiwgIm1vdXRfaHNpMl9idXNfdXNlciIsCj4gKwnCoMKgwqDCoCBDTEtfQ09O
X0dBVF9HT1VUX0JMS19IU0kyX1VJRF9IU0kyX0NNVV9IU0kyX0lQQ0xLUE9SVF9QQ0xLLAo+ICsJ
wqDCoMKgwqAgMjEsIENMS19JU19DUklUSUNBTCwgMCksCgpJIGhhdmUgYSBzaW1pbGFyIGNsb2Nr
IGluIFVTQiwgd2hpY2ggYWxzbyBjYXVzZXMgYSBoYW5nIGlmIG9mZiwgSSB3b25kZXIgd2hhdCB3
ZQpjb3VsZCBkbyBiZXR0ZXIgaGVyZS4KCgpDaGVlcnMsCkFuZHJlJwoKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
