Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F262DC02194
	for <linux-phy@archiver.kernel.org>; Fri,  7 Feb 2025 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9UfLfuOxDT0P7Jdg09ApD+Ml7+ojhKXyJxtjTtKkvIs=; b=MmnxZyo9Wq11rU
	lI/chz+yYcPC2on0pRKGEEjrMqYSTTEeiuoKxeeh8wdDxw8Z628AaVbduYKdszrRqnVedDXO9ONFj
	GDBuRypGaN5FVblc3Kqi3O2FeXW3FWaixcb4jxqnNqgMFGjUpoE1hNsPRCvy5yAjnGigZ9KlYs/qH
	6wI1UaB6WuNAO4mRA5BcmeGRV0gZW43CbBWYwttQ20zVnDwPvyBtOq/yPvbOZgyfXOqmx7Q5vOLXc
	fQI+0HboR6Xqm9xShwFzNHRNN1gaCU6wkwhxjVQytVw1cXHLM/e8j5rR58+dSPq12gQmloONPxgzp
	ZA0F00TKc/u6RXgVUt2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgQd3-0000000AA2G-2nkK;
	Fri, 07 Feb 2025 15:50:53 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgQSx-0000000A7JE-0n0f
	for linux-phy@lists.infradead.org;
	Fri, 07 Feb 2025 15:40:33 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-2fa1d9fb990so2531558a91.2
        for <linux-phy@lists.infradead.org>; Fri, 07 Feb 2025 07:40:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738942826; x=1739547626; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=78xz1A4WgmJ341XGWUR24O6ak1vHScxCshoNzxfmZpo=;
        b=D8ioriWtoOljQrAs1gWxfX8yKld58vLp7ZXurPun9H9176TcInvijA+BckRO7pSay1
         X+kTArvFhe9GQGdg7Qk8UfkMYbveybZxElBaUylv3vfCG10ZnKflR8C8Ryercv71zJMB
         Fz/wbldqRp1qTDt+GYkQHDS8f5W7iMoA0LAhM/xFowdzP+Pf5W06FUChLpds0O+94cs+
         0xC/hjiwDFL8Zq7pow7pQIOCOUdcD7Y7Ol+ApvYOWLY+dcXy/yQADDJmldj/XlU570pw
         ozP9/qrOGzvK4YcfWVbK3NtB+Hw8wQABMS3ngj/CXi4APRvK/K8NH/lcdKyzxnDs+/o3
         KThQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738942826; x=1739547626;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=78xz1A4WgmJ341XGWUR24O6ak1vHScxCshoNzxfmZpo=;
        b=Gp3CBx5i6595exf1HHLuG9TGbpE4StPwEcIvhPDxWaVtcaooHnFEP80x+rxxu1GIEB
         zxeT1xNbl93rtcNPgAtdiATeQ98/0U3BboXr2LtPUlki4nWq30k1louYcMZsae/Lff1o
         XpzwS2bUvBDxBgr3XEs9GBFg+yzm3yxbl7/e+z+sN0dMLugmZDmGtANPwnp8jCFE1iqb
         5n5mfB+iShrlvgHYmgGH/fWv+q9u71+g9rP+bh9So3L23hoO2g7aVm75pYrfj2BNHBcY
         P+i+CjrUXceS/3/hSnBmZbQiXKjp97StR+nMxpP210RCouUKLngtoSQLrHF4V/3MK0Nq
         tjEA==
X-Forwarded-Encrypted: i=1; AJvYcCVSrDnJypzruCb4tj43Jl5FN0nwr0bL+KbQ1CDCPmSdwJccsTAqXJ7pb/ViMdPZaj3lsHBfCy0TCDw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyC+hTsp40BZmtBcRnp8Ve5dXXFbCM0HCD/eSDHOXPIUU3Npgbj
	0JP88cOhkpeZH5Xc072IGHr+qznL0viHikpq94gUK9jJyITMRinIrXLbWOumSDz+ug2pxcV014n
	D2G3BtypyBNdeCU2toGQNI3lQ+to=
X-Gm-Gg: ASbGncsNdd5gMSAVEgDUtKmxO4IMEGUPTX9h7cNnmL/bEKwSPFvhKqRsi6gIJAjCniq
	Gh929EKrv0dhuTCPGp6A8VFxIwL6tMb84Odby+KFmOGytSpEBvp1f9iBgy3vV36bDBRM4e9ao
X-Google-Smtp-Source: AGHT+IFltx7zRD5jBeHpJqboIqZSnAU1irCJwfY5DFXF75JTXaJu2pXSjIbgVKSVf0zyhh90zMi5In8p1URs1ahdVII=
X-Received: by 2002:a17:90b:23d0:b0:2fa:13f7:960 with SMTP id
 98e67ed59e1d1-2fa2406a099mr5504001a91.13.1738942825550; Fri, 07 Feb 2025
 07:40:25 -0800 (PST)
MIME-Version: 1.0
References: <tencent_195F1119DC8F547C905D5ED127D173EFAE08@qq.com> <CAHCN7xL7eMV2f04nURp3jCCmNZ0GSTY=uaOwoiht38AC4Oz0EQ@mail.gmail.com>
In-Reply-To: <CAHCN7xL7eMV2f04nURp3jCCmNZ0GSTY=uaOwoiht38AC4Oz0EQ@mail.gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 7 Feb 2025 09:40:13 -0600
X-Gm-Features: AWEUYZnJEWSnAyZpvbvxi8GyVZXId-jerRmQTcMkcAD6TZ_EjsrysOmpqNVEgWk
Message-ID: <CAHCN7xJwZNc-mgxTqzRxqPshPxNyusrA-wdSUZBNq8UyAU04dQ@mail.gmail.com>
Subject: Re: [PATCH V5] phy: freescale: fsl-samsung-hdmi: fix build error in fsl_samsung_hdmi_phy_configure_pll_lock_det
To: xiaopeitux@foxmail.com, Vinod Koul <vkoul@kernel.org>
Cc: geert@linux-m68k.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Pei Xiao <xiaopei01@kylinos.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_074027_225610_E15E721D 
X-CRM114-Status: GOOD (  24.64  )
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

T24gVGh1LCBKYW4gMTYsIDIwMjUgYXQgNzo1OeKAr1BNIEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21h
aWwuY29tPiB3cm90ZToKPgo+IE9uIE1vbiwgSmFuIDEzLCAyMDI1IGF0IDI6NDHigK9BTSA8eGlh
b3BlaXR1eEBmb3htYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gRnJvbTogUGVpIFhpYW8gPHhpYW9w
ZWkwMUBreWxpbm9zLmNuPgo+ID4KPiA+IEZJRUxEX1BSRVAoKSBjaGVja3MgdGhhdCBhIHZhbHVl
IGZpdHMgaW50byB0aGUgYXZhaWxhYmxlIGJpdGZpZWxkLAo+ID4gYnV0IHRoZSBpbmRleCBkaXYg
ZXF1YWxzIHRvIDQsaXMgb3V0IG9mIHJhbmdlLgo+ID4KPiA+IHdoaWNoIGdjYyBjb21wbGFpbnMg
YWJvdXQ6Cj4gPiBJbiBmdW5jdGlvbiDigJhmc2xfc2Ftc3VuZ19oZG1pX3BoeV9jb25maWd1cmVf
cGxsX2xvY2tfZGV04oCZLAo+ID4gaW5saW5lZCBmcm9tIOKAmGZzbF9zYW1zdW5nX2hkbWlfcGh5
X2NvbmZpZ3VyZeKAmSBhdAo+ID4gZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3Vu
Zy1oZG1pLmMgOjQ3MDoyOgo+ID4gLi8uL2luY2x1ZGUvbGludXgvY29tcGlsZXJfdHlwZXMuaDo1
NDI6Mzg6IGVycm9yOiBjYWxsIHRvIOKAmF9fY29tcGlsZXRpbWVfYXNzZXJ0XzUzOOKAmQo+ID4g
ZGVjbGFyZWQgd2l0aCBhdHRyaWJ1dGUgZXJyb3I6IEZJRUxEX1BSRVA6IHZhbHVlIHRvbyBsYXJn
ZSBmb3IgdGhlIGZpZWxkCj4gPiAgIDU0MiB8ICBfY29tcGlsZXRpbWVfYXNzZXJ0KGNvbmRpdGlv
biwgbXNnLCBfX2NvbXBpbGV0aW1lX2Fzc2VydF8sCj4gPiBfX0NPVU5URVJfXykKPiA+ICAgICAg
IHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KPiA+IC4vLi9pbmNsdWRl
L2xpbnV4L2NvbXBpbGVyX3R5cGVzLmg6NTIzOjQ6IG5vdGU6IGluIGRlZmluaXRpb24gb2YKPiA+
IG1hY3JvIOKAmF9fY29tcGlsZXRpbWVfYXNzZXJ04oCZIDUyMyB8ICAgIHByZWZpeCAjIyBzdWZm
aXgoKTsKPiA+ICAgICAgIHwgICAgXn5+fn5+Cj4gPiAuLy4vaW5jbHVkZS9saW51eC9jb21waWxl
cl90eXBlcy5oOjU0MjoyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8KPiA+IOKAmF9jb21w
aWxldGltZV9hc3NlcnTigJkKPiA+ICAgNTQyIHwgIF9jb21waWxldGltZV9hc3NlcnQoY29uZGl0
aW9uLCBtc2csIF9fY29tcGlsZXRpbWVfYXNzZXJ0XywKPiA+ICBfX0NPVU5URVJfXykKPiA+Cj4g
PiBSRUcxMl9DS19ESVZfTUFTSyBvbmx5IHR3byBiaXQsIGxpbWl0IGRpdiB0byByYW5nZSAwfjMs
Cj4gPiBzbyBidWlsZCBlcnJvciB3aWxsIGZpeC4KPiA+Cj4gTEdUTS4KPgo+IFJldmlld2VkLWJ5
OiAgQWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFpbC5jb20+CgpWaW5vZCwKCkFueSBjaGFuY2UgdGhp
cyBjYW4gZ2V0IHB1bGxlZCBpbnRvIHlvdXIgcGh5IGJyYW5jaD8gIFNldmVyYWwgcGVvcGxlCmhh
dmUgcmVzcG9uZGVkIGluZGljYXRpbmcgc29tZSBjb21waWxlcnMgdGhyb3cgYnVpbGQgZXJyb3Jz
LCBhbmQgSQp0aGluayB0aGlzIGlzIGludGVuZGVkIHRvIGZpeCB0aGF0LgoKYWRhbQoKPgo+ID4g
Rml4ZXM6IGQ1Njc2NzlmMmI2YSAoInBoeTogZnJlZXNjYWxlOiBmc2wtc2Ftc3VuZy1oZG1pOiBD
bGVhbiB1cCBmbGRfdGdfY29kZSBjYWxjdWxhdGlvbiIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBQZWkg
WGlhbyA8eGlhb3BlaTAxQGt5bGlub3MuY24+Cj4gPgo+ID4gQ2hhbmdsb2c6Cj4gPiAtLS0KPiA+
IFY1OiBhZGQgcmV0dXJuIHJldCBmcm9tIEdlZXJ0IHN1Z2dlc3Rpb24KPiA+IFY0OiBjaGFuZ2Ug
dG8gdXNlIGlmIHN0YXRlbWVudAo+ID4gVjM6IGNoYW5nZSB0byB1c2UgZG8td2hpbGUKPiA+IFYy
OiBjaGFuZ2UgdG8gdXNlIGxvZ2ljYWwgQU5ECj4gPiAtLS0KPiA+ICBkcml2ZXJzL3BoeS9mcmVl
c2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYyB8IDEzICsrKysrKysrKysrLS0KPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMgYi9k
cml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYwo+ID4gaW5kZXggNWVh
YzcwYTFlODU4Li42ODE3Y2VhYmFhYjQgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3BoeS9mcmVl
c2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYwo+ID4gKysrIGIvZHJpdmVycy9waHkvZnJlZXNj
YWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKPiA+IEBAIC0zMjUsNyArMzI1LDcgQEAgdG9fZnNs
X3NhbXN1bmdfaGRtaV9waHkoc3RydWN0IGNsa19odyAqaHcpCj4gPiAgICAgICAgIHJldHVybiBj
b250YWluZXJfb2YoaHcsIHN0cnVjdCBmc2xfc2Ftc3VuZ19oZG1pX3BoeSwgaHcpOwo+ID4gIH0K
PiA+Cj4gPiAtc3RhdGljIHZvaWQKPiA+ICtzdGF0aWMgaW50Cj4gPiAgZnNsX3NhbXN1bmdfaGRt
aV9waHlfY29uZmlndXJlX3BsbF9sb2NrX2RldChzdHJ1Y3QgZnNsX3NhbXN1bmdfaGRtaV9waHkg
KnBoeSwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29u
c3Qgc3RydWN0IHBoeV9jb25maWcgKmNmZykKPiA+ICB7Cj4gPiBAQCAtMzQxLDYgKzM0MSw5IEBA
IGZzbF9zYW1zdW5nX2hkbWlfcGh5X2NvbmZpZ3VyZV9wbGxfbG9ja19kZXQoc3RydWN0IGZzbF9z
YW1zdW5nX2hkbWlfcGh5ICpwaHksCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsK
PiA+ICAgICAgICAgfQo+ID4KPiA+ICsgICAgICAgaWYgKHVubGlrZWx5KGRpdiA9PSA0KSkKPiA+
ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiA+ICsKPiA+ICAgICAgICAgd3JpdGVi
KEZJRUxEX1BSRVAoUkVHMTJfQ0tfRElWX01BU0ssIGRpdiksIHBoeS0+cmVncyArIFBIWV9SRUco
MTIpKTsKPiA+Cj4gPiAgICAgICAgIC8qCj4gPiBAQCAtMzY0LDYgKzM2Nyw4IEBAIGZzbF9zYW1z
dW5nX2hkbWlfcGh5X2NvbmZpZ3VyZV9wbGxfbG9ja19kZXQoc3RydWN0IGZzbF9zYW1zdW5nX2hk
bWlfcGh5ICpwaHksCj4gPiAgICAgICAgICAgICAgICBGSUVMRF9QUkVQKFJFRzE0X1JQX0NPREVf
TUFTSywgMikgfAo+ID4gICAgICAgICAgICAgICAgRklFTERfUFJFUChSRUcxNF9UR19DT0RFX0hJ
R0hfTUFTSywgZmxkX3RnX2NvZGUgPj4gOCksCj4gPiAgICAgICAgICAgICAgICBwaHktPnJlZ3Mg
KyBQSFlfUkVHKDE0KSk7Cj4gPiArCj4gPiArICAgICAgIHJldHVybiAwOwo+ID4gIH0KPiA+Cj4g
PiAgc3RhdGljIHVuc2lnbmVkIGxvbmcgZnNsX3NhbXN1bmdfaGRtaV9waHlfZmluZF9wbXModW5z
aWduZWQgbG9uZyBmb3V0LCB1OCAqcCwgdTE2ICptLCB1OCAqcykKPiA+IEBAIC00NjcsNyArNDcy
LDExIEBAIHN0YXRpYyBpbnQgZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJlKHN0cnVjdCBm
c2xfc2Ftc3VuZ19oZG1pX3BoeSAqcGh5LAo+ID4gICAgICAgICB3cml0ZWIoUkVHMjFfU0VMX1RY
X0NLX0lOViB8IEZJRUxEX1BSRVAoUkVHMjFfUE1TX1NfTUFTSywKPiA+ICAgICAgICAgICAgICAg
IGNmZy0+cGxsX2Rpdl9yZWdzWzJdID4+IDQpLCBwaHktPnJlZ3MgKyBQSFlfUkVHKDIxKSk7Cj4g
Pgo+ID4gLSAgICAgICBmc2xfc2Ftc3VuZ19oZG1pX3BoeV9jb25maWd1cmVfcGxsX2xvY2tfZGV0
KHBoeSwgY2ZnKTsKPiA+ICsgICAgICAgcmV0ID0gZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmln
dXJlX3BsbF9sb2NrX2RldChwaHksIGNmZyk7Cj4gPiArICAgICAgIGlmIChyZXQpIHsKPiA+ICsg
ICAgICAgICAgICAgICBkZXZfZXJyKHBoeS0+ZGV2LCAicGl4Y2xvY2sgdG9vIGxhcmdlXG4iKTsK
PiA+ICsgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gKyAgICAgICB9Cj4gPgo+ID4gICAg
ICAgICB3cml0ZWIoUkVHMzNfRklYX0RBIHwgUkVHMzNfTU9ERV9TRVRfRE9ORSwgcGh5LT5yZWdz
ICsgUEhZX1JFRygzMykpOwo+ID4KPiA+IC0tCj4gPiAyLjI1LjEKPiA+CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
