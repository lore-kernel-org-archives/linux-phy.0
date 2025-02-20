Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1764C021B2
	for <linux-phy@archiver.kernel.org>; Thu, 20 Feb 2025 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XseG+eEPInfGTf4RYyO7TafidmUNf9ncsy0wUx6Te5c=; b=vI5dpG+WwdfWVJ
	/de7wOELt0ZlfzjNzNYI2egcLL8zw3oyfxGhwj7XvQOdQy7XFVOsgjb9WoHFSjpsnwos3dr8lutqf
	wjNYcqUQ1LfuKswLTtTDUHVa9EvEMHbkdTZOXeXdEnsipPnLAoBxNNynJGdpPILWgD2vL0YEUp76c
	rKo4du9I97UkBSFTbcxCB3aqWQ6qTI/Ow1T48k2XXMavre1HLEONS93QnXZjEy9Nm3IzhFzz9kNt/
	WFInboyjYF8+5GB6+8N+GcYjTFByt8HAcqlg8rkwV1bNIF/V/VZ7MpfrzjrkfTuMERzw3C13Ksdve
	Z3yMch9GcQIqLsGs6NGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlD8v-00000002mnC-2C5x;
	Thu, 20 Feb 2025 20:27:33 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlD8t-00000002mm9-2puM;
	Thu, 20 Feb 2025 20:27:32 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-439950a45daso8966905e9.2;
        Thu, 20 Feb 2025 12:27:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740083249; x=1740688049; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OtfmfrXV4Fenqpt6KK3zaAtg3JmCzHplb9SYG8vsTp0=;
        b=aCaAZWc7txPepAmaqf+HDZ/d5WWfbS6C8HYd8bKRVrKLJ4HMyMUCHEX0hed/ZXXlZB
         WHAFZieur+iQORtyucOjHhXrRZXhULykdc13RXcK/R8XQgu3ekln68fwj5P1TozaaJP1
         l7j7zp8TqDBiEt03j/PPfZyhIuNdVmE4zn1KCF2c+i9CUzJX8ygCnReOpXfv52K51cz3
         mA2sreunPUcXu/dUO4J2TqMpQBpY+YWmHnz8izp+OEPvDejrjTbiPTbt9foKq8OL+u1B
         843Ul2fdGQ/yFhLZlpSH1S+mQMfwzrDInz3JkAE0aMAwcsSCCwJIT4mT1bxyng1tNGpx
         xAJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740083249; x=1740688049;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OtfmfrXV4Fenqpt6KK3zaAtg3JmCzHplb9SYG8vsTp0=;
        b=iLZZyagDTFGK+SPVlAufghwfwckdlgt+EFGlWgr3nUFkZ/b+I+9JKou+jha1+cDnSX
         mlO2ovP6+lmQRBHzuheWpMpiQXYY80gxHU3yW6g16WC8bEChP4SIb0VT8unqCoezyIuo
         ZLEsTbfD/6g7lZfzh2aveyPExrhXSrVZh2ICeniT1Z3hxZ31M8/8h2StG8gTiZLvDQ7i
         VhD0wnstIPHJjpuO06XyLzW65n8KtbLS7tblsS0NvfxFEhJVmApsLwmJpHlId9xBbOJq
         VuUoTSin1u8zbVlspZGFOV3gejmzeFayAWJ1Jas3YdniYFnUBo4lg95icWREv8Q+7BIh
         yrFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVElDgKkfFY6omn0KLWeUNZE6vqO5Udv96fvtwPbPQLAfePoWZTDYmyMeATp6M94mXalrOgUci9wwRzoKjvQ87U@lists.infradead.org, AJvYcCVzh/lRV7DxsQI70PBhQZ7VYIC5Sswzddjx59DO59dToGK5UXK/E0mipNeFctCmcgkM3jqWpziZuWv4@lists.infradead.org
X-Gm-Message-State: AOJu0YxRtbdanrcC36umCtZJztUw52FzM6Trtk3CCouFC4fybSFMgSv5
	IwZMTaBQuvxFA1ztFHg6heQp5uy+Y4G9Jt3smM03UbdFPk8Pc0DO
X-Gm-Gg: ASbGncs1IAzIPC37wluigCzb7+OOH/2GRvpH5qci5t4BttriZd0i0A9IlCaM3BUZOA2
	BIQy+hbjtwsbWK8Pp28Td2UfKugP7KP3E1/Trz5Hb/0+ldOMS22XggWHrWIpNR6C9Yq2/D/uoQU
	DjbM1yScDeS2p1Vdp7rI/8cjmKW8SvEmm5vqQk68BZ5LLNt0lv6DCxyxpoxUIoCbGl6THnPBuDR
	XQMn17RR+SlbVWsw+MiQX2Al2hhgXZnYAz2Uv3sN0EfWVfTRLLoGirsuyRWm0pFEhcE+fOZUTGv
	CHka1hcgNrPnGxDN7eEbSSHr5Ncj4Rt9vJ+0z8ObHuo2OGiiow/TYTdjx9TdYcfcBGI=
X-Google-Smtp-Source: AGHT+IECii+tVv+IZA8Kwcb9HLreQ7WkQqdHkR9yh3R3Vri6Dsiv8yRmWFnRoRF5/CwPCmIDOfBbOQ==
X-Received: by 2002:a05:600c:3b93:b0:439:96b2:e9b with SMTP id 5b1f17b1804b1-439ae1e6a3amr4585785e9.9.1740083249349;
        Thu, 20 Feb 2025 12:27:29 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a1b824dsm250156575e9.34.2025.02.20.12.27.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 12:27:28 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Philippe Simons <simons.philippe@gmail.com>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Allwinner sunXi SoC support" <linux-sunxi@lists.linux.dev>,
 open list <linux-kernel@vger.kernel.org>,
 Philippe Simons <simons.philippe@gmail.com>
Subject: Re: [RFC PATCH 1/3] phy: don't let controllers change vbus reg
Date: Thu, 20 Feb 2025 21:27:27 +0100
Message-ID: <2261426.ZfL8zNpBrT@jernej-laptop>
In-Reply-To: <20250118102207.9339-1-simons.philippe@gmail.com>
References: <20250118102207.9339-1-simons.philippe@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_122731_714517_D9B26850 
X-CRM114-Status: GOOD (  19.74  )
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

RG5lIHNvYm90YSwgMTguIGphbnVhciAyMDI1IG9iIDExOjIyOjA0IFNyZWRuamVldnJvcHNraSBz
dGFuZGFyZG5pIMSNYXMgamUgUGhpbGlwcGUgU2ltb25zIG5hcGlzYWwoYSk6Cj4gQWxsd2lubmVy
cyBTb0NzIHNoYXJlIHBoeTAgYmV0d2VlbiB0aGUgTVVTQiBjb250cm9sbGVyIGFuZCBIQ0kgY29u
dHJvbGxlci4KPiBJZiB3ZSBsZXQgdGhlc2UgY29udHJvbGxlcnMgaW5kZXBlbmRlbnRseSBwb3dl
ciBvbiB0aGUgdmJ1cyBvbiB0aGF0IHBoeSwKPiBwZXJpcGhlcmFsIG1vZGUgaXMgZGFuZ2Vyb3Vz
IGJlY2F1c2UgSENJIG5ldmVyIHBvd2VyIGRvd24gdGhlIHBoeSwgcmVzdWx0aW5nCj4gaW4gNXYg
YmVpbmcgYXBwbGllZCBhZ2FpbnN0IHRoZSBob3N0IDV2Lgo+IAo+IE92ZXJyaWRlIHBvd2VyX29u
L29mZiBmb3IgcGh5MCBpbiB0aGF0IGNhc2UsIGFuZCBsZXQgcmVndWxhdG9yIGJlIGVuYWJsZWQv
ZGlzYWJsZWQKPiBiYXNlZCBvbiBpZF9kZXQgb25seS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBQaGls
aXBwZSBTaW1vbnMgPHNpbW9ucy5waGlsaXBwZUBnbWFpbC5jb20+CgpJcyB0aGlzIGZpeCBmb3Ig
c29tZSBvYnNlcnZlZCBpc3N1ZT8gSWYgc28sIEZpeGVzIHRhZyB3b3VsZCBiZSBhcHByb3ByaWF0
ZS4KCj4gLS0tCj4gIGRyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmMgfCAyNiAr
KysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9u
cygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRpLXVz
Yi5jIGIvZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11c2IuYwo+IGluZGV4IGIwZjE5
ZTk1MC4uMjRmYmFiZTdhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L2FsbHdpbm5lci9waHkt
c3VuNGktdXNiLmMKPiArKysgYi9kcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRpLXVzYi5j
Cj4gQEAgLTQ2NSw2ICs0NjUsMTAgQEAgc3RhdGljIGludCBzdW40aV91c2JfcGh5X3Bvd2VyX29u
KHN0cnVjdCBwaHkgKl9waHkpCj4gIAlzdHJ1Y3Qgc3VuNGlfdXNiX3BoeV9kYXRhICpkYXRhID0g
dG9fc3VuNGlfdXNiX3BoeV9kYXRhKHBoeSk7Cj4gIAlpbnQgcmV0Owo+ICAKPiArCS8qIHBoeTAg
cG93ZXIgaXMgY29udHJvbGxlZCBieSBzdW40aV91c2JfcGh5MF9yZXJvdXRlIGFuZCBpZF9kZXQg
c3RhdGUgKi8KPiArCWlmIChwaHktPmluZGV4ID09IDAgJiYgZGF0YS0+Y2ZnLT5waHkwX2R1YWxf
cm91dGUpCj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICAJaWYgKCFwaHktPnZidXMgfHwgcGh5LT5yZWd1
bGF0b3Jfb24pCj4gIAkJcmV0dXJuIDA7Cj4gIAo+IEBAIC00OTMsNiArNDk3LDEwIEBAIHN0YXRp
YyBpbnQgc3VuNGlfdXNiX3BoeV9wb3dlcl9vZmYoc3RydWN0IHBoeSAqX3BoeSkKPiAgCXN0cnVj
dCBzdW40aV91c2JfcGh5ICpwaHkgPSBwaHlfZ2V0X2RydmRhdGEoX3BoeSk7Cj4gIAlzdHJ1Y3Qg
c3VuNGlfdXNiX3BoeV9kYXRhICpkYXRhID0gdG9fc3VuNGlfdXNiX3BoeV9kYXRhKHBoeSk7Cj4g
IAo+ICsJLyogcGh5MCBwb3dlciBpcyBjb250cm9sbGVkIGJ5IHN1bjRpX3VzYl9waHkwX3Jlcm91
dGUgYW5kIGlkX2RldCBzdGF0ZSAqLwo+ICsJaWYgKHBoeS0+aW5kZXggPT0gMCAmJiBkYXRhLT5j
ZmctPnBoeTBfZHVhbF9yb3V0ZSkKPiArCQlyZXR1cm4gMDsKPiArCj4gIAlpZiAoIXBoeS0+dmJ1
cyB8fCAhcGh5LT5yZWd1bGF0b3Jfb24pCj4gIAkJcmV0dXJuIDA7Cj4gIAo+IEBAIC01NzMsOSAr
NTgxLDIxIEBAIHN0YXRpYyB2b2lkIHN1bjRpX3VzYl9waHkwX3Jlcm91dGUoc3RydWN0IHN1bjRp
X3VzYl9waHlfZGF0YSAqZGF0YSwgaW50IGlkX2RldCkKPiAgCWlmIChpZF9kZXQgPT0gMCkgewo+
ICAJCS8qIEhvc3QgbW9kZS4gUm91dGUgcGh5MCB0byBFSENJL09IQ0kgKi8KPiAgCQlyZWd2YWwg
Jj0gfk9UR0NUTF9ST1VURV9NVVNCOwo+ICsKPiArCQkvKiBFbmFibGUgVkJVUyByZWcgKi8KPiAr
CQlpZiAocGh5LT52YnVzICYmICFwaHktPnJlZ3VsYXRvcl9vbikgewoKSSBkb24ndCBzZWUgYW55
ICJwaHkiIHZhcmlhYmxlIGluIHRoaXMgZnVuY3Rpb24uIEFsc28sIHlvdSBzaG91bGQgYWRkIHNh
bWUKcHJvdGVjdGlvbiBhcyBpdCBpcyBpbXBsZW1lbnRlZCBpbiBzdW40aV91c2JfcGh5X3Bvd2Vy
X29uKCkuIFNraXAgZW5hYmxpbmcKcmVndWxhdG9yIGlmOgoKc3VuNGlfdXNiX3BoeTBfaGF2ZV92
YnVzX2RldChkYXRhKSAmJiBkYXRhLT52YnVzX2RldAoKPiArCQkJcmVndWxhdG9yX2VuYWJsZShw
aHktPnZidXMpOwo+ICsJCQlwaHktPnJlZ3VsYXRvcl9vbiA9IHRydWU7Cj4gKwkJfQo+ICAJfSBl
bHNlIHsKPiAgCQkvKiBQZXJpcGhlcmFsIG1vZGUuIFJvdXRlIHBoeTAgdG8gTVVTQiAqLwo+ICAJ
CXJlZ3ZhbCB8PSBPVEdDVExfUk9VVEVfTVVTQjsKPiArCQkKPiArCQkvKiBEaXNhYmxlIFZCVVMg
cmVnICovCj4gKwkJaWYgKHBoeS0+dmJ1cyAmJiBwaHktPnJlZ3VsYXRvcl9vbikgewo+ICsJCQly
ZWd1bGF0b3JfZGlzYWJsZShwaHktPnZidXMpOwo+ICsJCQlwaHktPnJlZ3VsYXRvcl9vbiA9IGZh
bHNlOwo+ICsJCX0KPiAgCX0KPiAgCXdyaXRlbChyZWd2YWwsIGRhdGEtPmJhc2UgKyBSRUdfUEhZ
X09UR0NUTCk7Cj4gIH0KPiBAQCAtNjAzLDYgKzYyMywxMiBAQCBzdGF0aWMgdm9pZCBzdW40aV91
c2JfcGh5MF9pZF92YnVzX2RldF9zY2FuKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKPiAgCQly
ZXR1cm47Cj4gIAl9Cj4gIAo+ICsJLyogRGlzYWJsZSBpbnRlcm5hbCBWQlVTIHJlZyBpZiB0aGVy
ZSBpcyBhbiBleHRlcm5hbCBWQlVTICovCj4gKwlpZiAodmJ1c19kZXQgIT0gMCAmJiBwaHktPnZi
dXMgJiYgcGh5LT5yZWd1bGF0b3Jfb24pIHsKCklkZWFsbHksIHRoaXMgc2hvdWxkIG5ldmVyIGhh
cHBlbi4KCkJlc3QgcmVnYXJkcywKSmVybmVqCgo+ICsJCXJlZ3VsYXRvcl9kaXNhYmxlKHBoeS0+
dmJ1cyk7Cj4gKwkJcGh5LT5yZWd1bGF0b3Jfb24gPSBmYWxzZTsKPiArCX0KPiArCj4gIAlmb3Jj
ZV9zZXNzaW9uX2VuZCA9IGRhdGEtPmZvcmNlX3Nlc3Npb25fZW5kOwo+ICAJZGF0YS0+Zm9yY2Vf
c2Vzc2lvbl9lbmQgPSBmYWxzZTsKPiAgCj4gCgoKCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
