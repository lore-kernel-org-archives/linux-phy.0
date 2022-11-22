Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D70E2C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 22 Nov 2022 16:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=So7DvfxKSwpBym2ZlOEEdSjiVgQMwtoPfXdAu/eE5Dg=; b=hMoPjwRCmBpliv
	ZxUVg+w0SZ9Ca/X9p4iyro54p3EtPmmL1md/M02Er+4SS5esPrt1zejmjvxdiF1S9g58qK4ApqAwH
	mgPwHvjPssC9VKaaZye4GVYeJW1qq3ewR1lz6QWcllBIsTs32W4WdJIGpWPUmDY8084QoQhNOABEV
	cg+fjIt1t+tGVWhsdtUr/m+2/j4VD26EQ7V4AEjgqzxL1V/hQP+NO+k6t0JoQ4v8Q4FvbQNtOBQYk
	xkaY3jWjzCRjIYxWa9aOXIVaAvE/OYABel1RQI5xyy7ZmKOP6URfjn5M2ncyBpbWa3xHSc4V75LjP
	ylYrsbE2IE01MwfRNWWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxW1Q-00AgQN-AV; Tue, 22 Nov 2022 16:21:20 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxW1M-00AgNd-2u
	for linux-phy@lists.infradead.org; Tue, 22 Nov 2022 16:21:19 +0000
Received: by mail-pl1-x630.google.com with SMTP id g10so14111836plo.11
        for <linux-phy@lists.infradead.org>; Tue, 22 Nov 2022 08:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T82+qptXBJG7eHFalgFxGvJty6XiRIjJgNv/yNtgHQU=;
        b=CGayHwcXg4RlZZiXO3+tUzsOCvK8+vITVedxsiYG01Ss5kJwmGUgFPk6owHSTWmQ3W
         wQHRC3wrfFBRZWEZCf4pFcqI/wGhEGE+cPVCJrqlub2MCcRMFBfJPaANDUjtyVE3Aq8m
         GcKQxnU7LBJ3O+7SNmIb4f+N2iYtUnI2yTmc253T7s8GhKrujsacLHFDO8Q5T4D8u4+4
         BY15dWh/csAxaVDAOpNT80j6yNiGvrffn1tPO5i5P5CPDTrD/wBsnPBweHeKiUOV0BvU
         nkPn4R701VMBsuQc0Gc1vwVwlIG7eZrcQtz8BJYndEqEKKdSKIs/9D+rkHOJLfLujfvQ
         FtzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T82+qptXBJG7eHFalgFxGvJty6XiRIjJgNv/yNtgHQU=;
        b=cW0+XCY7VzVDSfTX2ZoYpABC8/QaoOoDUK0zvoMr/pBX9dpAgd45PUK8qak8dB2u/g
         WkAOdTm2rHslOJJz/SK1tmfAwiwFxcm5Wrfj7lul+DOvDuXF2ICIPbIRjBvbig27r6HC
         P0vOcKQ13xLw+ZSfCkWb91qsGw7nDrHtuEs++QhOjeYz8t/1SPFKm65aB/NcO2ah3v3A
         hsaXhE4/GOkQ/iBiAj+/Kp7SENdQ18mSGU3wx+95T2UZbABQs8QRPtMlcmXMxHzKEyv/
         wBOdl6Of7MPV+fYAVxcgyUL/Wbzyuhdgi5Ts79TjqrYTlvKA+YWcEqwT6aPA8lD7l08z
         EsQg==
X-Gm-Message-State: ANoB5pmbmFylVptcjCTg3XhqUKUCLu1ouS58dqM/hU6ONX9jWmTt//aE
	7PydLxj3gXcOV2ww+/WhchXTH4OqMD98
X-Google-Smtp-Source: AA0mqf6l92+V2KEY1154uP2hV83L/YjK1ubsJ6Y9kmK7IiIOfO9aiOuPLeSZeThlmngtXhyCVoG+lQ==
X-Received: by 2002:a17:90a:2b47:b0:218:9671:3b85 with SMTP id y7-20020a17090a2b4700b0021896713b85mr17801148pjc.4.1669134072427;
        Tue, 22 Nov 2022 08:21:12 -0800 (PST)
Received: from thinkpad ([117.202.191.0])
        by smtp.gmail.com with ESMTPSA id mn23-20020a17090b189700b002187a4dd830sm9522876pjb.46.2022.11.22.08.21.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 08:21:11 -0800 (PST)
Date: Tue, 22 Nov 2022 21:51:03 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, konrad.dybcio@somainline.org,
	robh+dt@kernel.org, quic_cang@quicinc.com,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org, dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com
Subject: Re: [PATCH v2 02/15] phy: qcom-qmp-ufs: Add support for configuring
 PHY in HS Series B mode
Message-ID: <20221122162103.GF157542@thinkpad>
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
 <20221031180217.32512-3-manivannan.sadhasivam@linaro.org>
 <Y23zO68Bb5R0xLq/@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y23zO68Bb5R0xLq/@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_082116_156659_D4DD7DCF 
X-CRM114-Status: GOOD (  25.25  )
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

T24gRnJpLCBOb3YgMTEsIDIwMjIgYXQgMTI6MzE6MTVQTSArMDUzMCwgVmlub2QgS291bCB3cm90
ZToKPiBPbiAzMS0xMC0yMiwgMjM6MzIsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+
IEFkZCBzZXBhcmF0ZSB0YWJsZXNfaHNfYiBpbnN0YW5jZSB0byBhbGxvdyB0aGUgUEhZIGRyaXZl
ciB0byBjb25maWd1cmUgdGhlCj4gPiBQSFkgaW4gSFMgU2VyaWVzIEIgbW9kZS4gVGhlIGluZGl2
aWR1YWwgU29DIGNvbmZpZ3MgbmVlZCB0byBzdXBwbHkgdGhlCj4gPiBzZXJkZXMgcmVnaXN0ZXIg
c2V0dGluZyBpbiB0YWJsZXNfaHNfYiBhbmQgdGhlIFVGUyBkcml2ZXIgY2FuIHJlcXVlc3QgdGhl
Cj4gPiBTZXJpZXMgQiBtb2RlIGJ5IGNhbGxpbmcgcGh5X3NldF9tb2RlKCkgd2l0aCBtb2RlIHNl
dCB0byBQSFlfTU9ERV9VRlNfSFNfQi4KPiA+IAo+ID4gUmV2aWV3ZWQtYnk6IERtaXRyeSBCYXJ5
c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4KPiA+IFNpZ25lZC1vZmYtYnk6IE1h
bml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Cj4g
PiAtLS0KPiA+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMgfCAxOCAr
KysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKQo+
ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVm
cy5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4gPiBpbmRleCBj
ZGZkYTRlNmQ1NzUuLjRjNmEyYjVhZmM5YSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYwo+ID4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0v
cGh5LXFjb20tcW1wLXVmcy5jCj4gPiBAQCAtMjAsNiArMjAsOCBAQAo+ID4gICNpbmNsdWRlIDxs
aW51eC9yZXNldC5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+Cj4gPiAgCj4gPiArI2lu
Y2x1ZGUgPHVmcy91bmlwcm8uaD4KPiA+ICsKPiA+ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcGh5
L3BoeS5oPgo+ID4gIAo+ID4gICNpbmNsdWRlICJwaHktcWNvbS1xbXAuaCIKPiA+IEBAIC01NDks
NiArNTUxLDggQEAgc3RydWN0IHFtcF9waHlfY2ZnIHsKPiA+ICAKPiA+ICAJLyogTWFpbiBpbml0
IHNlcXVlbmNlIGZvciBQSFkgYmxvY2tzIC0gc2VyZGVzLCB0eCwgcngsIHBjcyAqLwo+ID4gIAlj
b25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmdfdGFibGVzIHRhYmxlczsKPiA+ICsJLyogQWRkaXRpb25h
bCBzZXF1ZW5jZSBmb3IgSFMgU2VyaWVzIEIgKi8KPiA+ICsJY29uc3Qgc3RydWN0IHFtcF9waHlf
Y2ZnX3RhYmxlcyB0YWJsZXNfaHNfYjsKPiAKPiB3aGF0IGFtIGkgbWlzc2luZywgd2hlcmUgd2Fz
IHRhYmxlc19oc19iIGFkZGVkPwo+IAoKVGhpcyBwYXRjaCBhZGRzIHRoZSBpbmZyYXN0cnVjdHVy
ZSBmb3IgSFNfQiBtb2RlLiBUaGUgYWN0dWFsIHRhYmxlIGlzIGFkZGVkIGluCnBhdGNoIDUvMTUu
CgpUaGFua3MsCk1hbmkKCj4gPiAgCj4gPiAgCS8qIGNsb2NrIGlkcyB0byBiZSByZXF1ZXN0ZWQg
Ki8KPiA+ICAJY29uc3QgY2hhciAqIGNvbnN0ICpjbGtfbGlzdDsKPiA+IEBAIC01ODIsNiArNTg2
LDcgQEAgc3RydWN0IHFtcF9waHlfY2ZnIHsKPiA+ICAgKiBAcngyOiBpb21hcHBlZCBtZW1vcnkg
c3BhY2UgZm9yIHNlY29uZCBsYW5lJ3MgcnggKGluIGR1YWwgbGFuZSBQSFlzKQo+ID4gICAqIEBw
Y3NfbWlzYzogaW9tYXBwZWQgbWVtb3J5IHNwYWNlIGZvciBsYW5lJ3MgcGNzX21pc2MKPiA+ICAg
KiBAcW1wOiBRTVAgcGh5IHRvIHdoaWNoIHRoaXMgbGFuZSBiZWxvbmdzCj4gPiArICogQG1vZGU6
IFBIWSBtb2RlIGNvbmZpZ3VyZWQgYnkgdGhlIFVGUyBkcml2ZXIKPiA+ICAgKi8KPiA+ICBzdHJ1
Y3QgcW1wX3BoeSB7Cj4gPiAgCXN0cnVjdCBwaHkgKnBoeTsKPiA+IEBAIC01OTQsNiArNTk5LDcg
QEAgc3RydWN0IHFtcF9waHkgewo+ID4gIAl2b2lkIF9faW9tZW0gKnJ4MjsKPiA+ICAJdm9pZCBf
X2lvbWVtICpwY3NfbWlzYzsKPiA+ICAJc3RydWN0IHFjb21fcW1wICpxbXA7Cj4gPiArCXUzMiBt
b2RlOwo+ID4gIH07Cj4gPiAgCj4gPiAgLyoqCj4gPiBAQCAtOTgzLDYgKzk4OSw4IEBAIHN0YXRp
YyBpbnQgcW1wX3Vmc19wb3dlcl9vbihzdHJ1Y3QgcGh5ICpwaHkpCj4gPiAgCWludCByZXQ7Cj4g
PiAgCj4gPiAgCXFtcF91ZnNfc2VyZGVzX2luaXQocXBoeSwgJmNmZy0+dGFibGVzKTsKPiA+ICsJ
aWYgKHFwaHktPm1vZGUgPT0gUEhZX01PREVfVUZTX0hTX0IpCj4gPiArCQlxbXBfdWZzX3NlcmRl
c19pbml0KHFwaHksICZjZmctPnRhYmxlc19oc19iKTsKPiA+ICAKPiA+ICAJcW1wX3Vmc19sYW5l
c19pbml0KHFwaHksICZjZmctPnRhYmxlcyk7Cj4gPiAgCj4gPiBAQCAtMTA3MCw2ICsxMDc4LDE1
IEBAIHN0YXRpYyBpbnQgcW1wX3Vmc19kaXNhYmxlKHN0cnVjdCBwaHkgKnBoeSkKPiA+ICAJcmV0
dXJuIHFtcF91ZnNfZXhpdChwaHkpOwo+ID4gIH0KPiA+ICAKPiA+ICtzdGF0aWMgaW50IHFtcF91
ZnNfc2V0X21vZGUoc3RydWN0IHBoeSAqcGh5LCBlbnVtIHBoeV9tb2RlIG1vZGUsIGludCBzdWJt
b2RlKQo+ID4gK3sKPiA+ICsJc3RydWN0IHFtcF9waHkgKnFwaHkgPSBwaHlfZ2V0X2RydmRhdGEo
cGh5KTsKPiA+ICsKPiA+ICsJcXBoeS0+bW9kZSA9IG1vZGU7Cj4gPiArCj4gPiArCXJldHVybiAw
Owo+ID4gK30KPiA+ICsKPiA+ICBzdGF0aWMgaW50IHFtcF91ZnNfdnJlZ19pbml0KHN0cnVjdCBk
ZXZpY2UgKmRldiwgY29uc3Qgc3RydWN0IHFtcF9waHlfY2ZnICpjZmcpCj4gPiAgewo+ID4gIAlz
dHJ1Y3QgcWNvbV9xbXAgKnFtcCA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+ID4gQEAgLTExMDUs
NiArMTEyMiw3IEBAIHN0YXRpYyBpbnQgcW1wX3Vmc19jbGtfaW5pdChzdHJ1Y3QgZGV2aWNlICpk
ZXYsIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyAqY2ZnKQo+ID4gIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgcGh5X29wcyBxY29tX3FtcF91ZnNfb3BzID0gewo+ID4gIAkucG93ZXJfb24JPSBxbXBfdWZz
X2VuYWJsZSwKPiA+ICAJLnBvd2VyX29mZgk9IHFtcF91ZnNfZGlzYWJsZSwKPiA+ICsJLnNldF9t
b2RlCT0gcW1wX3Vmc19zZXRfbW9kZSwKPiA+ICAJLm93bmVyCQk9IFRISVNfTU9EVUxFLAo+ID4g
IH07Cj4gPiAgCj4gPiAtLSAKPiA+IDIuMjUuMQo+IAo+IC0tIAo+IH5WaW5vZAoKLS0gCuCuruCu
o+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
