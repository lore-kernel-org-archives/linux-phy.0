Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DD53C5472F
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 17:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oDa2lZIGE+m5HG/I1kD/+3+vjFjCebud2lkNbqdRNNs=; b=4Ax1boyFOKnnTQ
	BfgRSLo5NdjdOzZVjlN5m6ZB57TBTGkCWVBuGqqjn7apM43B1NimKr3MULuZU2BWdbnBsOqrvf3hD
	d12e1iorvspUY08zlUQYa7qn2VezQq8NzMIdgTm3EpoKQCeXIMzX75+4RPpfRYD6GAj4/nYMcqzq+
	S5mNjIoZ0gZ0VVoXSuULSFPnqtLhN9wTsn4kZGnbWtSbOIii6d+tApGIyt2H5wRny5DtXwbzSUipb
	CeGeVdy68N9NAbKkWLWeA1PQyA81Et8Nk1OTp8yNaBisGvhz/yLmf5d5zSwYUjoB2z6LvC3b4O/zi
	JPCj5j1JLGCtVXfFLsBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sizbX-0000000CCgq-3lJd;
	Tue, 27 Aug 2024 17:03:39 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sizWh-0000000CAxu-0ZRh
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 16:58:40 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-2d3c05ec278so4225469a91.0
        for <linux-phy@lists.infradead.org>; Tue, 27 Aug 2024 09:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724777917; x=1725382717; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RNOwiGcykeoyGFZH+Z8xEbsCMXGedxmWrwkU43JsjYY=;
        b=VrEx4snSMI3AZFsy2xhFo6n45+8EpEv0GxRISAKA79eiay40f1TQff/THfL+Fl9jMZ
         u+xVZ51FbV8JJylbjNxAji2ZjyJf/5IFScxBa9ui23HE/gs1dCcqj+Ahq+5UXDDK9hXF
         sdOh5CT4W+mgEV8f/wwziKdseLP3UTJPJxNJ7yaMnZR8ktYtxZarQXfzwoQQeoR5ovpg
         CnJM8YTL7wjYO2Z+su3zhDibX5SZN8Ot0++HUb6shzubhSWbWK0S3fWYNqL6Jk5i062t
         sliPLFVhzRFdvP1b8sscqKKsr+XOLByK0VaeIivkYOVn9/fWPl6TU+KoaiF4CMqGPVGA
         sJ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724777917; x=1725382717;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RNOwiGcykeoyGFZH+Z8xEbsCMXGedxmWrwkU43JsjYY=;
        b=qr710kbQXwQlJs9jJ6BYhbGEyqwbzsoXWNHGkkm75YEJZ71bjLLm0J8zJPkz17BQPO
         s02ceEqP12PkdOQ7XsUHKkDxv6mUZp/0cKx0Tb9vC1q+tbasG0hd5aOkX0NqTqtugAK/
         rqb138c+dcssiB4tgVVBsR10ZOD2GQ9ual9X6b9rlVymyliq/EOGvMrH4aBj80m8CTG0
         BN1xghpkdNHbiWcOPbZ5OihcGWJQznftt37fAResSKFgwq/E0AHL+g4BVMVg57AV7htj
         3MHM/kXiE662sGd77h7VmfIj6w4djdGtOPsFjUy5Kr8Q+wOqLmD2dzoIRAOc04ciSNN+
         XjIA==
X-Forwarded-Encrypted: i=1; AJvYcCV8QlgCRturrMaCA/KXE96LmDXyTn5Nq9Tob+2YR2ux0M7EApIB5zqa58AYz+9dWfqXRR+V4dilbHI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4yK495/4WP+azzLDP114jvzGk3DMCO4Id9aWwcPfD0tCy4RLr
	xzgQfiimzomJGuj/EUdi5mw8vyLSuCOZmombHIO4EjbhV+T/giGLaWs6GSNyqA==
X-Google-Smtp-Source: AGHT+IGLcPL1IDSSlTXVztXaCfb8EIBRYUJpya5p4/6WNmOA1w8yKEQ+6PrKcZDyqShicuXYBx34YA==
X-Received: by 2002:a17:90a:a883:b0:2d3:cfe1:31f6 with SMTP id 98e67ed59e1d1-2d646c1ebd8mr13729729a91.25.1724777917253;
        Tue, 27 Aug 2024 09:58:37 -0700 (PDT)
Received: from thinkpad ([117.213.96.164])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d613b1f0d5sm12370594a91.55.2024.08.27.09.58.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2024 09:58:36 -0700 (PDT)
Date: Tue, 27 Aug 2024 22:28:26 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Qiang Yu <quic_qianyu@quicinc.com>, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, kw@linux.com, lpieralisi@kernel.org,
	neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH 8/8] PCI: qcom: Add support to PCIe slot power supplies
Message-ID: <20240827165826.moe6cnemeheos6jn@thinkpad>
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
 <20240827063631.3932971-9-quic_qianyu@quicinc.com>
 <CAA8EJpq5KergZ8czg4F=EYMLANoOeBsiSVoO-zAgfG0ezQrKCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpq5KergZ8czg4F=EYMLANoOeBsiSVoO-zAgfG0ezQrKCQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_095839_213590_FEA90E38 
X-CRM114-Status: GOOD (  27.36  )
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

T24gVHVlLCBBdWcgMjcsIDIwMjQgYXQgMDI6NDQ6MDlQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiBUdWUsIDI3IEF1ZyAyMDI0IGF0IDA5OjM2LCBRaWFuZyBZdSA8cXVpY19x
aWFueXVAcXVpY2luYy5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIHBsYXRmb3JtIHgxZTgwMTAwIFFD
UCwgUENJZTMgaXMgYSBzdGFuZGFyZCB4OCBmb3JtIGZhY3Rvci4gSGVuY2UsIGFkZAo+ID4gc3Vw
cG9ydCB0byB1c2UgMy4zdiwgMy4zdiBhdXggYW5kIDEydiByZWd1bGF0b3JzLgo+IAo+IEZpcnN0
IG9mIGFsbCwgSSBkb24ndCBzZWUgY29ycmVzcG9uZGluZyBiaW5kaW5ncyBjaGFuZ2UuCj4gCj4g
U2Vjb25kLCB0aGVzZSBzdXBwbGllcyBwb3dlciB1cCB0aGUgc2xvdCwgbm90IHRoZSBob3N0IGNv
bnRyb2xsZXIKPiBpdHNlbGYuIEFzIHN1Y2ggdGhlc2Ugc3VwcGxpZXMgZG8gbm90IGJlbG9uZyB0
byB0aGUgaG9zdCBjb250cm9sbGVyCj4gZW50cnkuIFBsZWFzZSBjb25zaWRlciB1c2luZyB0aGUg
cHdyc2VxIGZyYW1ld29yayBpbnN0ZWFkLgo+IAoKSW5kZWVkLiBGb3IgbGVnYWN5IHJlYXNvbnMs
IHNsb3QgcG93ZXIgc3VwcGxpZXMgd2VyZSBwb3B1bGF0ZWQgaW4gdGhlIGhvc3QKYnJpZGdlIG5v
ZGUgaXRzZWxmIHVudGlsIHJlY2VudGx5IFJvYiBzdGFydGVkIG9iamVjdGluZyBpdCBbMV0uIEFu
ZCBpdCBtYWtlcwpyZWFsIHNlbnNlIHRvIHB1dCB0aGVzZSBzdXBwbGllcyBpbiB0aGUgcm9vdCBw
b3J0IG5vZGUgYW5kIGhhbmRsZSB0aGVtIGluIHRoZQpyZWxldmFudCBkcml2ZXIuCgpJJ20gc3Rp
bGwgZXZhbHVhdGluZyB3aGV0aGVyIHRoZSBoYW5kbGluZyBzaG91bGQgYmUgZG9uZSBpbiB0aGUg
cG9ydGRydiBvcgpwd3JjdGwgZHJpdmVyLCBidXQgaGF2ZW4ndCByZWFjaGVkIHRoZSBjb25jbHVz
aW9uLiBQd3JjdGwgc2VlbXMgdG8gYmUgdGhlIGlkZWFsCmNob2ljZSwgYnV0IEkgc2VlIGEgZmV3
IGlzc3VlcyByZWxhdGVkIHRvIGhhbmRsaW5nIHRoZSBPRiBub2RlIGZvciB0aGUgcm9vdApwb3J0
LgoKSG9wZSBJJ2xsIGNvbWUgdG8gYSBjb25jbHVzaW9uIGluIHRoZSBuZXh0IGZldyBkYXlzIGFu
ZCB3aWxsIHVwZGF0ZSB0aGlzIHRocmVhZC4KCi0gTWFuaQoKWzFdIGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2xrbWwvMjAyNDA2MDQyMzU4MDYuR0ExOTAzNDkzLXJvYmhAa2VybmVsLm9yZy8KCj4g
Pgo+ID4gU2lnbmVkLW9mZi1ieTogUWlhbmcgWXUgPHF1aWNfcWlhbnl1QHF1aWNpbmMuY29tPgo+
ID4gLS0tCj4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMgfCA1MiAr
KysrKysrKysrKysrKysrKysrKysrKysrLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1MCBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9j
b250cm9sbGVyL2R3Yy9wY2llLXFjb20uYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aWUtcWNvbS5jCj4gPiBpbmRleCA2Zjk1M2UzMmQ5OTAuLjU5ZmI0MTVkZmVlYiAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4gPiArKysgYi9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+ID4gQEAgLTI0OCw2ICsyNDgs
OCBAQCBzdHJ1Y3QgcWNvbV9wY2llX2NmZyB7Cj4gPiAgICAgICAgIGJvb2wgbm9fbDBzOwo+ID4g
IH07Cj4gPgo+ID4gKyNkZWZpbmUgUUNPTV9QQ0lFX1NMT1RfTUFYX1NVUFBMSUVTICAgICAgICAg
ICAgICAgICAgICAzCj4gPiArCj4gPiAgc3RydWN0IHFjb21fcGNpZSB7Cj4gPiAgICAgICAgIHN0
cnVjdCBkd19wY2llICpwY2k7Cj4gPiAgICAgICAgIHZvaWQgX19pb21lbSAqcGFyZjsgICAgICAg
ICAgICAgICAgICAgICAvKiBEVCBwYXJmICovCj4gPiBAQCAtMjYwLDYgKzI2Miw3IEBAIHN0cnVj
dCBxY29tX3BjaWUgewo+ID4gICAgICAgICBzdHJ1Y3QgaWNjX3BhdGggKmljY19jcHU7Cj4gPiAg
ICAgICAgIGNvbnN0IHN0cnVjdCBxY29tX3BjaWVfY2ZnICpjZmc7Cj4gPiAgICAgICAgIHN0cnVj
dCBkZW50cnkgKmRlYnVnZnM7Cj4gPiArICAgICAgIHN0cnVjdCByZWd1bGF0b3JfYnVsa19kYXRh
IHNsb3Rfc3VwcGxpZXNbUUNPTV9QQ0lFX1NMT1RfTUFYX1NVUFBMSUVTXTsKPiA+ICAgICAgICAg
Ym9vbCBzdXNwZW5kZWQ7Cj4gPiAgICAgICAgIGJvb2wgdXNlX3BtX29wcDsKPiA+ICB9Owo+ID4g
QEAgLTExNzQsNiArMTE3Nyw0MSBAQCBzdGF0aWMgaW50IHFjb21fcGNpZV9saW5rX3VwKHN0cnVj
dCBkd19wY2llICpwY2kpCj4gPiAgICAgICAgIHJldHVybiAhISh2YWwgJiBQQ0lfRVhQX0xOS1NU
QV9ETExMQSk7Cj4gPiAgfQo+ID4KPiA+ICtzdGF0aWMgaW50IHFjb21fcGNpZV9lbmFibGVfc2xv
dF9zdXBwbGllcyhzdHJ1Y3QgcWNvbV9wY2llICpwY2llKQo+ID4gK3sKPiA+ICsgICAgICAgc3Ry
dWN0IGR3X3BjaWUgKnBjaSA9IHBjaWUtPnBjaTsKPiA+ICsgICAgICAgaW50IHJldDsKPiA+ICsK
PiA+ICsgICAgICAgcmV0ID0gcmVndWxhdG9yX2J1bGtfZW5hYmxlKEFSUkFZX1NJWkUocGNpZS0+
c2xvdF9zdXBwbGllcyksCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBw
Y2llLT5zbG90X3N1cHBsaWVzKTsKPiA+ICsgICAgICAgaWYgKHJldCA8IDApCj4gPiArICAgICAg
ICAgICAgICAgZGV2X2VycihwY2ktPmRldiwgIkZhaWxlZCB0byBlbmFibGUgc2xvdCByZWd1bGF0
b3JzXG4iKTsKPiA+ICsKPiA+ICsgICAgICAgcmV0dXJuIHJldDsKPiA+ICt9Cj4gPiArCj4gPiAr
c3RhdGljIHZvaWQgcWNvbV9wY2llX2Rpc2FibGVfc2xvdF9zdXBwbGllcyhzdHJ1Y3QgcWNvbV9w
Y2llICpwY2llKQo+ID4gK3sKPiA+ICsgICAgICAgcmVndWxhdG9yX2J1bGtfZGlzYWJsZShBUlJB
WV9TSVpFKHBjaWUtPnNsb3Rfc3VwcGxpZXMpLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHBjaWUtPnNsb3Rfc3VwcGxpZXMpOwo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgaW50
IHFjb21fcGNpZV9nZXRfc2xvdF9zdXBwbGllcyhzdHJ1Y3QgcWNvbV9wY2llICpwY2llKQo+ID4g
K3sKPiA+ICsgICAgICAgc3RydWN0IGR3X3BjaWUgKnBjaSA9IHBjaWUtPnBjaTsKPiA+ICsgICAg
ICAgaW50IHJldDsKPiA+ICsKPiA+ICsgICAgICAgcGNpZS0+c2xvdF9zdXBwbGllc1swXS5zdXBw
bHkgPSAidnBjaWUxMnYiOwo+ID4gKyAgICAgICBwY2llLT5zbG90X3N1cHBsaWVzWzFdLnN1cHBs
eSA9ICJ2cGNpZTN2MyI7Cj4gPiArICAgICAgIHBjaWUtPnNsb3Rfc3VwcGxpZXNbMl0uc3VwcGx5
ID0gInZwY2llM3YzYXV4IjsKPiA+ICsgICAgICAgcmV0ID0gZGV2bV9yZWd1bGF0b3JfYnVsa19n
ZXQocGNpLT5kZXYsIEFSUkFZX1NJWkUocGNpZS0+c2xvdF9zdXBwbGllcyksCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBjaWUtPnNsb3Rfc3VwcGxpZXMpOwo+ID4g
KyAgICAgICBpZiAocmV0IDwgMCkKPiA+ICsgICAgICAgICAgICAgICBkZXZfZXJyKHBjaS0+ZGV2
LCAiRmFpbGVkIHRvIGdldCBzbG90IHJlZ3VsYXRvcnNcbiIpOwo+ID4gKwo+ID4gKyAgICAgICBy
ZXR1cm4gcmV0Owo+ID4gK30KPiA+ICsKPiA+ICBzdGF0aWMgaW50IHFjb21fcGNpZV9ob3N0X2lu
aXQoc3RydWN0IGR3X3BjaWVfcnAgKnBwKQo+ID4gIHsKPiA+ICAgICAgICAgc3RydWN0IGR3X3Bj
aWUgKnBjaSA9IHRvX2R3X3BjaWVfZnJvbV9wcChwcCk7Cj4gPiBAQCAtMTE4MiwxMCArMTIyMCwx
NCBAQCBzdGF0aWMgaW50IHFjb21fcGNpZV9ob3N0X2luaXQoc3RydWN0IGR3X3BjaWVfcnAgKnBw
KQo+ID4KPiA+ICAgICAgICAgcWNvbV9lcF9yZXNldF9hc3NlcnQocGNpZSk7Cj4gPgo+ID4gLSAg
ICAgICByZXQgPSBwY2llLT5jZmctPm9wcy0+aW5pdChwY2llKTsKPiA+ICsgICAgICAgcmV0ID0g
cWNvbV9wY2llX2VuYWJsZV9zbG90X3N1cHBsaWVzKHBjaWUpOwo+ID4gICAgICAgICBpZiAocmV0
KQo+ID4gICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPgo+ID4gKyAgICAgICByZXQgPSBw
Y2llLT5jZmctPm9wcy0+aW5pdChwY2llKTsKPiA+ICsgICAgICAgaWYgKHJldCkKPiA+ICsgICAg
ICAgICAgICAgICBnb3RvIGVycl9kaXNhYmxlX3Nsb3Q7Cj4gPiArCj4gPiAgICAgICAgIHJldCA9
IHBoeV9zZXRfbW9kZV9leHQocGNpZS0+cGh5LCBQSFlfTU9ERV9QQ0lFLCBQSFlfTU9ERV9QQ0lF
X1JDKTsKPiA+ICAgICAgICAgaWYgKHJldCkKPiA+ICAgICAgICAgICAgICAgICBnb3RvIGVycl9k
ZWluaXQ7Cj4gPiBAQCAtMTIxNiw3ICsxMjU4LDggQEAgc3RhdGljIGludCBxY29tX3BjaWVfaG9z
dF9pbml0KHN0cnVjdCBkd19wY2llX3JwICpwcCkKPiA+ICAgICAgICAgcGh5X3Bvd2VyX29mZihw
Y2llLT5waHkpOwo+ID4gIGVycl9kZWluaXQ6Cj4gPiAgICAgICAgIHBjaWUtPmNmZy0+b3BzLT5k
ZWluaXQocGNpZSk7Cj4gPiAtCj4gPiArZXJyX2Rpc2FibGVfc2xvdDoKPiA+ICsgICAgICAgcWNv
bV9wY2llX2Rpc2FibGVfc2xvdF9zdXBwbGllcyhwY2llKTsKPiA+ICAgICAgICAgcmV0dXJuIHJl
dDsKPiA+ICB9Cj4gPgo+ID4gQEAgLTEyMjgsNiArMTI3MSw3IEBAIHN0YXRpYyB2b2lkIHFjb21f
cGNpZV9ob3N0X2RlaW5pdChzdHJ1Y3QgZHdfcGNpZV9ycCAqcHApCj4gPiAgICAgICAgIHFjb21f
ZXBfcmVzZXRfYXNzZXJ0KHBjaWUpOwo+ID4gICAgICAgICBwaHlfcG93ZXJfb2ZmKHBjaWUtPnBo
eSk7Cj4gPiAgICAgICAgIHBjaWUtPmNmZy0+b3BzLT5kZWluaXQocGNpZSk7Cj4gPiArICAgICAg
IHFjb21fcGNpZV9kaXNhYmxlX3Nsb3Rfc3VwcGxpZXMocGNpZSk7Cj4gPiAgfQo+ID4KPiA+ICBz
dGF0aWMgdm9pZCBxY29tX3BjaWVfaG9zdF9wb3N0X2luaXQoc3RydWN0IGR3X3BjaWVfcnAgKnBw
KQo+ID4gQEAgLTE2MDIsNiArMTY0NiwxMCBAQCBzdGF0aWMgaW50IHFjb21fcGNpZV9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAg
Z290byBlcnJfcG1fcnVudGltZV9wdXQ7Cj4gPiAgICAgICAgIH0KPiA+Cj4gPiArICAgICAgIHJl
dCA9IHFjb21fcGNpZV9nZXRfc2xvdF9zdXBwbGllcyhwY2llKTsKPiA+ICsgICAgICAgaWYgKHJl
dCkKPiA+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9wbV9ydW50aW1lX3B1dDsKPiA+ICsKPiA+
ICAgICAgICAgcmV0ID0gcGNpZS0+Y2ZnLT5vcHMtPmdldF9yZXNvdXJjZXMocGNpZSk7Cj4gPiAg
ICAgICAgIGlmIChyZXQpCj4gPiAgICAgICAgICAgICAgICAgZ290byBlcnJfcG1fcnVudGltZV9w
dXQ7Cj4gPiAtLQo+ID4gMi4zNC4xCj4gPgo+IAo+IAo+IC0tIAo+IFdpdGggYmVzdCB3aXNoZXMK
PiBEbWl0cnkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/
4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
