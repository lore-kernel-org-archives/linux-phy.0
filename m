Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D5AFCCA47A
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jun 2022 16:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2oUEaseSmHVUeN8jHrMmpSCor0cVOkKxm71AgJGXiE8=; b=IrCedto7z3eaqp
	FARABQ45S+X8BulISPn4GLFXKtjkF9UYecGd2j+hi0HQBpa6cv9g8WLvnc/9UghbeXvMjnkBuZP//
	n8PeDmBKHQ8TNI0RaKf5w8Z4bLlPFPd2taMRvIRGX07ILx4PMWwl/HdNTqw0wqzG/lD+jY96M9Hhn
	gEbP6+HOpJhl68kOSt32ucuESIiMfe8appbHwg6xw8JwEhFhKuV/w7+IWwFF5ZYWDlhOExRhq2IyI
	swW9MgyFnQLjDV+2htAIazyaDT0TswhiRt5zNFS2JhTL8bKO3WlDVTS/sMsMoVEYczaLOxNwbcpoS
	OQ2+Mlo5DaqK8a0L6fWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1ruu-003HY8-Db; Thu, 16 Jun 2022 16:00:20 +0000
Received: from mail-il1-f173.google.com ([209.85.166.173])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1ruE-003H5w-RL; Thu, 16 Jun 2022 15:59:40 +0000
Received: by mail-il1-f173.google.com with SMTP id v7so1225899ilo.3;
        Thu, 16 Jun 2022 08:59:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=9X8XVpxanme0vyK5ZysC7xWSiXXF1IS6YVmw346xm58=;
        b=YiuSCznwJhHsEYD9yaHukyqs0Q5/91XXnH2n8VvtXhGKLBbaMURPSBoqZ8tc8VxwEN
         ES7RTTn+vMo0rzO0RSu1ZCwqqvExiWu0DVAg1Jm/fMT3ITZvHDwlikogrF56RbB+vmA0
         3wfTAL3yjyOS/AIqKMqnMw7E060/l74/o1tGAcSH9nTk5RcW7fA3AH+6XHGt82XqpQPF
         r5Zv9ZvxnbphAS6TgReT2hOww4T3kPZgzl1LXnwLEyIcz0Jf4vKV4XLFlWOKEZdAKzUW
         aDXgO/g/WQKuQOYCOAN3F+eT4KL8hM7h4qm83RFVQz1kzkzKvKUlBvwzUsXDrtLj4/qe
         fs2A==
X-Gm-Message-State: AJIora9Y7l3MCAn8BqdMs3muqS4D7hkECDxh+ac0Pp/8bfqPX4s0iyaB
	UVE3L2xxsMIH7C5p+DMt4w==
X-Google-Smtp-Source: AGRyM1tsF2fjNAC99BuE4yG5HgXIsLOoQnQ86Je1QQ5KdittiSk3qv10mDZg/0Ysw1DP6C4MAwPFUQ==
X-Received: by 2002:a05:6e02:1521:b0:2d1:5e40:b94b with SMTP id i1-20020a056e02152100b002d15e40b94bmr3152904ilu.182.1655395176743;
        Thu, 16 Jun 2022 08:59:36 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id c9-20020a6bb309000000b00669ae49f762sm1311642iof.19.2022.06.16.08.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 08:59:36 -0700 (PDT)
Received: (nullmailer pid 3554362 invoked by uid 1000);
	Thu, 16 Jun 2022 15:59:34 -0000
Date: Thu, 16 Jun 2022 09:59:34 -0600
From: Rob Herring <robh@kernel.org>
To: Icenowy Zheng <uwu@icenowy.me>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Bin Liu <b-liu@ti.com>, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-usb@vger.kernel.org
Subject: Re: [PATCH 2/7] dt-bindings: phy: add binding document for Allwinner
 F1C100s USB PHY
Message-ID: <20220616155934.GA3543984-robh@kernel.org>
References: <20220608070452.338006-1-uwu@icenowy.me>
 <20220608070452.338006-3-uwu@icenowy.me>
 <20220608144939.GA1366879-robh@kernel.org>
 <3628fbc2eb9a8c21dc0742b929ee14da76f9adf5.camel@icenowy.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3628fbc2eb9a8c21dc0742b929ee14da76f9adf5.camel@icenowy.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_085938_914220_A5E68FAD 
X-CRM114-Status: GOOD (  29.39  )
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

T24gV2VkLCBKdW4gMDgsIDIwMjIgYXQgMTA6NTI6NTJQTSArMDgwMCwgSWNlbm93eSBaaGVuZyB3
cm90ZToKPiDlnKggMjAyMi0wNi0wOOaYn+acn+S4ieeahCAwODo0OSAtMDYwMO+8jFJvYiBIZXJy
aW5n5YaZ6YGT77yaCj4gPiBPbiBXZWQsIEp1biAwOCwgMjAyMiBhdCAwMzowNDo0N1BNICswODAw
LCBJY2Vub3d5IFpoZW5nIHdyb3RlOgo+ID4gPiBBbGx3aW5uZXIgRjFDMTAwcyBoYXMgdGhlIG1v
c3Qgc2ltcGxlIFVTQiBQSFkgYW1vbmcgYWxsIEFsbHdpbm5lcgo+ID4gPiBTb0NzLAo+ID4gPiBi
ZWNhdXNlIGl0IGhhcyBvbmx5IG9uZSBPVEcgVVNCIGNvbnRyb2xsZXIsIG5vIGhvc3Qtb25seSBP
SENJL0VIQ0kKPiA+ID4gY29udHJvbGxlcnMuCj4gPiA+IAo+ID4gPiBBZGQgYSBiaW5kaW5nIGRv
Y3VtZW50IGZvciBpdC4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEljZW5vd3kgWmhlbmcg
PHV3dUBpY2Vub3d5Lm1lPgo+ID4gPiAtLS0KPiA+ID4gwqAuLi4vcGh5L2FsbHdpbm5lcixzdW5p
di1mMWMxMDBzLXVzYi1waHkueWFtbMKgIHwgODMKPiA+ID4gKysrKysrKysrKysrKysrKysrKwo+
ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA4MyBpbnNlcnRpb25zKCspCj4gPiA+IMKgY3JlYXRlIG1v
ZGUgMTAwNjQ0Cj4gPiA+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYWxs
d2lubmVyLHN1bml2LWYxYzEwMHMtdXNiLQo+ID4gPiBwaHkueWFtbAo+ID4gPiAKPiA+ID4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYWxsd2lubmVy
LHN1bml2LQo+ID4gPiBmMWMxMDBzLXVzYi1waHkueWFtbAo+ID4gPiBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYWxsd2lubmVyLHN1bml2LWYxYzEwMHMtCj4gPiA+IHVz
Yi1waHkueWFtbAo+ID4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gPiBpbmRleCAwMDAwMDAw
MDAwMDAuLjE4MGZhODg0MGJmNwo+ID4gPiAtLS0gL2Rldi9udWxsCj4gPiA+ICsrKyBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYWxsd2lubmVyLHN1bml2LQo+ID4gPiBm
MWMxMDBzLXVzYi1waHkueWFtbAo+ID4gPiBAQCAtMCwwICsxLDgzIEBACj4gPiA+ICsjIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gPiAKPiA+IER1YWwgbGljZW5zZSBwbGVhc2Uu
Cj4gCj4gSSBhbSBiYXNlZCBvbiBhbm90aGVyIEFsbHdpbm5lciBVU0IgUEhZIGJpbmRpbmcgZmls
ZSBpbiB0aGUgc2FtZQo+IGRpcmVjdG9yeSwgYW5kIHRoYXQgZmlsZSBpcyBzaW5nbGUgbGljZW5z
ZWQuIEkgY3JlYXRlZCBhIG5ldyBmaWxlCj4gYmVjYXVzZSBlYWNoIHZhcmlhbnQgb2YgdGhlIFBI
WSBoYXMgYSBzaW5nbGUgZmlsZSBub3cuCgpPa2F5LCBkZXNjcmliaW5nIHRoZSBzb3VyY2UgYW5k
IHRoZSBkaWZmZXJlbmNlcyBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgCndvdWxkIGJlIGhlbHBmdWwu
Cgo+IAo+ID4gCj4gPiA+ICslWUFNTCAxLjIKPiA+ID4gKy0tLQo+ID4gPiArJGlkOgo+ID4gPiBo
dHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9waHkvYWxsd2lubmVyLHN1bml2LWYxYzEwMHMt
dXNiLXBoeS55YW1sIwo+ID4gPiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEt
c2NoZW1hcy9jb3JlLnlhbWwjCj4gPiA+ICsKPiA+ID4gK3RpdGxlOiBBbGx3aW5uZXIgRjFDMTAw
cyBVU0IgUEhZIERldmljZSBUcmVlIEJpbmRpbmdzCj4gPiA+ICsKPiA+ID4gK21haW50YWluZXJz
Ogo+ID4gPiArwqAgLSBDaGVuLVl1IFRzYWkgPHdlbnNAY3NpZS5vcmc+Cj4gPiA+ICvCoCAtIE1h
eGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4KPiA+ID4gKwo+ID4gPiArcHJvcGVydGll
czoKPiA+ID4gK8KgICIjcGh5LWNlbGxzIjoKPiA+ID4gK8KgwqDCoCBjb25zdDogMQo+ID4gPiAr
Cj4gPiA+ICvCoCBjb21wYXRpYmxlOgo+ID4gPiArwqDCoMKgIGNvbnN0OiBhbGx3aW5uZXIsc3Vu
aXYtZjFjMTAwcy11c2ItcGh5Cj4gPiA+ICsKPiA+ID4gK8KgIHJlZzoKPiA+ID4gK8KgwqDCoCBt
YXhJdGVtczogMQo+ID4gPiArwqDCoMKgIGRlc2NyaXB0aW9uOiBQSFkgQ29udHJvbCByZWdpc3Rl
cnMKPiA+ID4gKwo+ID4gPiArwqAgcmVnLW5hbWVzOgo+ID4gPiArwqDCoMKgIGNvbnN0OiBwaHlf
Y3RybAo+ID4gPiArCj4gPiA+ICvCoCBjbG9ja3M6Cj4gPiA+ICvCoMKgwqAgbWF4SXRlbXM6IDEK
PiA+ID4gK8KgwqDCoCBkZXNjcmlwdGlvbjogVVNCIE9URyBQSFkgYnVzIGNsb2NrCj4gPiA+ICsK
PiA+ID4gK8KgIGNsb2NrLW5hbWVzOgo+ID4gPiArwqDCoMKgIGNvbnN0OiB1c2IwX3BoeQo+ID4g
Cj4gPiAqLW5hbWVzIGlzIG5vdCBuZWVkZWQgd2l0aCBvbmx5IG9uZSBlbnRyeS4gUGx1cywganVz
dCB1c2luZyB0aGUKPiA+IG1vZHVsZSAKPiA+IG5hbWUgaXMgbm90IGEgZ3JlYXQgY2hvaWNlLgo+
IAo+IEhvd2V2ZXIgdGhlIGRyaXZlciBleHBlY3RzIGl0Li4uCj4gCj4gU2hvdWxkIEkgcGF0Y2gg
dGhlIGRyaXZlciB0byB1c2Ugbm8gbmFtZSBvbiBGMUMxMDBzPwo+IAo+ID4gCj4gPiA+ICsKPiA+
ID4gK8KgIHJlc2V0czoKPiA+ID4gK8KgwqDCoCBtYXhJdGVtczogMQo+ID4gPiArwqDCoMKgIGRl
c2NyaXB0aW9uOiBVU0IgT1RHIHJlc2V0Cj4gPiA+ICsKPiA+ID4gK8KgIHJlc2V0LW5hbWVzOgo+
ID4gPiArwqDCoMKgIGNvbnN0OiB1c2IwX3Jlc2V0Cj4gPiAKPiA+IFNhbWUgaGVyZS4KPiA+IAo+
ID4gPiArwqAgdXNiMF9pZF9kZXQtZ3Bpb3M6Cj4gPiA+ICvCoMKgwqAgbWF4SXRlbXM6IDEKPiA+
ID4gK8KgwqDCoCBkZXNjcmlwdGlvbjogR1BJTyB0byB0aGUgVVNCIE9URyBJRCBwaW4KPiA+ID4g
Kwo+ID4gPiArwqAgdXNiMF92YnVzX2RldC1ncGlvczoKPiA+ID4gK8KgwqDCoCBtYXhJdGVtczog
MQo+ID4gPiArwqDCoMKgIGRlc2NyaXB0aW9uOiBHUElPIHRvIHRoZSBVU0IgT1RHIFZCVVMgZGV0
ZWN0IHBpbgo+ID4gPiArCj4gPiA+ICvCoCB1c2IwX3ZidXNfcG93ZXItc3VwcGx5Ogo+ID4gPiAr
wqDCoMKgIGRlc2NyaXB0aW9uOiBQb3dlciBzdXBwbHkgdG8gZGV0ZWN0IHRoZSBVU0IgT1RHIFZC
VVMKPiA+ID4gKwo+ID4gPiArwqAgdXNiMF92YnVzLXN1cHBseToKPiA+ID4gK8KgwqDCoCBkZXNj
cmlwdGlvbjogUmVndWxhdG9yIGNvbnRyb2xsaW5nIFVTQiBPVEcgVkJVUwo+ID4gCj4gPiBXaHkg
dGhlICd1c2IwXycgcHJlZml4Pwo+ID4gCj4gPiBBcmUgdGhlc2UgR1BJT3MgYW5kIFZidXMgc3Vw
cGx5IGNvbm5lY3RlZCB0byB0aGUgcGh5PyBJZiBub3QsIHRoZXNlCj4gPiBhbGwgCj4gPiBiZWxv
bmcgaW4gYSBjb25uZWN0b3Igbm9kZSAoYXMgdGhhdCBpcyB3aGVyZSB0aGV5IGFyZSBjb25uZWN0
ZWQgdG8gaW4KPiA+IGgvdykuCj4gCj4gV2VsbCB0aGVzZSBhcmUgaGlzdG9yaWNhbCB0aGluZ3Mg
b2YgcGh5LXN1bjRpLXVzYiBkcml2ZXIgdG9vLgoKT2theSwgdGhlcmUgc2hvdWxkIHBlcmhhcHMg
YmUgYSBjb21tb24gc2NoZW1hIHNvIHRoaXMgc2hhcmluZyBpcyBjbGVhci4gClRob3VnaCBsb25n
ZXIgdGVybSB0aGVyZSBzaG91bGQgYmUgYSBtb3ZlIHRvIHRoZSBjb21tb24gd2F5IG9mIGhhbmRs
aW5nIAp0aGVzZSBmb3IgbmV3IHBsYXRmb3Jtcy4KClNvIEkgZ3Vlc3MgaW4gc3VtbWFyeToKClJl
dmlld2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
