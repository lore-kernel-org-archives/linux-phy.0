Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCE51C352A1
	for <linux-phy@archiver.kernel.org>; Tue,  6 Dec 2022 07:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S4Ia/VwmAWE62Ld+fACS4O8hke4u6vAFbakoRtJOBW0=; b=V5gs4OPYZLL+HF
	avw3MXGH7ZLX1opg6VeaNeDi+88Ll8LXWbgu7Up5k+MAtNmaos11QeYtAfh66Zem4pxK4k/rBamOc
	Yeh3hKZPxIe0+OC5DSERyKWQWfN4gKR4dsIS8TmYoiW7XvQNxcZzKmSaRHMJuNZMf8iUzuc53jfeC
	TDEBue9WWWfBFS3uWaWnf5aGv6CS8AJyBi1UeNVOq8R7jBSQmoT5q87+ai73bcnMg1LnM3s5rrbJW
	W62IDCqL0B/3BaJ/gcACEXf1h5k9sG0xCHCzfaUyfIeXCEICDwVzNWfW3jR3QqB8Qca4yMY8KVyhY
	besF4EnShrNuLTWDHdqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2SCN-003S13-Al; Tue, 06 Dec 2022 07:17:03 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2SCK-003RxQ-Hg
	for linux-phy@lists.infradead.org; Tue, 06 Dec 2022 07:17:01 +0000
Received: by mail-pj1-x102d.google.com with SMTP id q17-20020a17090aa01100b002194cba32e9so17219799pjp.1
        for <linux-phy@lists.infradead.org>; Mon, 05 Dec 2022 23:16:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JTSI5HR3WnDKTZRPXK83rcPbsVP3u6ffhCyIodP1cOE=;
        b=U7IwrxKy55O+MBd8SJHKPNWSuF4KNbjNhF1YooLxi2VEdgVHSw3ovfcvB/YwZ3HX3w
         3HwNyR7QI99qbW6UOXX3dJbELbIXCEu1PN1OyuEnXvWU95ydPQ7qc/YjlIIAXCDgAOY2
         zNNJ2/9FkyNktHGqVn2A6no+H4pIr0Qvk0mqpi8huWC7HAgtxNoKiZKsrCsyXTlI2YRI
         yUkpDoiLVYo5/1otKAU3tswHNyA4pWMcXLGcLu+LYIkxkYzcc6SJ2CCBVUnMYLUN0EaZ
         LtKTTDFbLcF9ipHxbr70nzAxju3ObgBvBO1SlDKMCjlodv5iaCs34E2AavZ10uu6360t
         ZsqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JTSI5HR3WnDKTZRPXK83rcPbsVP3u6ffhCyIodP1cOE=;
        b=c2qXrZ420WH6r+nfwDbyYUZBKIb1pN6+22Ck48lc2xkGePIZG7ymcpl1DPgkl9Kzrd
         Vj4q3mxh0npebr3QTOClJyPHv2/SRLVOd0pdOvQXYTbtxzbmbao7GbrkRFRMEHU+8M4h
         8nv8MPiHEjTocEQCDHyAtXTKG7I6uLqqjDIVxaQyY/HO5NWnJAjk6IROkfRByuhJf2pS
         1LX6fFv/nb8Rd061dj6VrfvYaViUE1BbcS+bVOknOjOGWoHrfYcPatKuZgtARs3fR1YT
         Pc3dNDD6XOMFK32PN61AWskq6FBDZvaa+HERwVJBKtsC7E/ikybtpN8Qw/wV1TWYI1Sm
         /hZA==
X-Gm-Message-State: ANoB5pk9duZ2NeDTrul1yyOdFq/imyi1nT0OUTR/58PlQ1aq4VdcbceV
	va0fTLZXi52IS9i54I9YT0pG
X-Google-Smtp-Source: AA0mqf7jSwpa+9rghz3/A9hAT95/JbAfuSu06LB1bPty8KOCs3MVv+9OSXhjs04A6Quh0Scp4qu6xg==
X-Received: by 2002:a17:90a:394d:b0:219:c8f9:b286 with SMTP id n13-20020a17090a394d00b00219c8f9b286mr10576513pjf.5.1670311017514;
        Mon, 05 Dec 2022 23:16:57 -0800 (PST)
Received: from thinkpad ([117.207.29.147])
        by smtp.gmail.com with ESMTPSA id y16-20020a170902b49000b0016d72804664sm11671719plr.205.2022.12.05.23.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Dec 2022 23:16:56 -0800 (PST)
Date: Tue, 6 Dec 2022 12:46:50 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
	vkoul@kernel.org, quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
	ahalaney@redhat.com, abel.vesa@linaro.org, alim.akhtar@samsung.com,
	avri.altman@wdc.com, bvanassche@acm.org
Subject: Re: [PATCH v4 09/23] phy: qcom-qmp-ufs: Avoid setting HS G3 specific
 registers
Message-ID: <20221206071650.GB15486@thinkpad>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
 <20221201174328.870152-10-manivannan.sadhasivam@linaro.org>
 <29FC6095-645C-46B1-BFD1-0CB9F05214FD@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <29FC6095-645C-46B1-BFD1-0CB9F05214FD@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_231700_610118_EF2CEFF3 
X-CRM114-Status: GOOD (  19.08  )
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

T24gVHVlLCBEZWMgMDYsIDIwMjIgYXQgMTI6NTU6MDZBTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiAKPiAKPiBPbiAxIERlY2VtYmVyIDIwMjIgMjA6NDM6MTQgR01UKzAzOjAwLCBN
YW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPiB3
cm90ZToKPiA+U004MzUwIGRlZmF1bHQgaW5pdCBzZXF1ZW5jZSBzZXRzIHNvbWUgUENTIHJlZ2lz
dGVycyB0byBIUyBHMywgdGhlcmVieQo+ID5kaXNhYmxpbmcgSFMgRzQgbW9kZS4gVGhpcyBoYXMg
dGhlIGVmZmVjdCBvbiBNUEhZIGNhcGFiaWxpdHkgbmVnb3RpYXRpb24KPiA+YmV0d2VlbiB0aGUg
aG9zdCBhbmQgdGhlIGRldmljZSBkdXJpbmcgbGluayBzdGFydHVwIGFuZCBjYXVzZXMgdGhlCj4g
PlBBX01BWEhTR0VBUiB0byBHMyBpcnJlc3BlY3RpdmUgb2YgZGV2aWNlIG1heCBnZWFyLgo+ID4K
PiA+RHVlIHRvIHRoYXQsIHRoZSBhZ3JlZWQgZ2VhciBzcGVlZCBkZXRlcm1pbmVkIGJ5IHRoZSBV
RlMgY29yZSB3aWxsIGJlY29tZQo+ID5HMyBvbmx5IGFuZCB0aGUgcGxhdGZvcm0gd29uJ3QgcnVu
IGF0IEc0Lgo+ID4KPiA+U28sIGxldCdzIHJlbW92ZSBzZXR0aW5nIHRoZXNlIHJlZ2lzdGVycyBm
b3IgU004MzUwIGFzIGxpa2Ugb3RoZXIgRzQKPiA+Y29tcGF0aWJsZSBwbGF0Zm9ybXMuIE9uZSBk
b3duc2lkZSBvZiB0aGlzIGlzIHRoYXQsIHdoZW4gdGhlIGJvYXJkIGRlc2lnbgo+ID51c2VzIG5v
bi1HNCBjb21wYXRpYmxlIGRldmljZSwgdGhlbiBNUEhZIHdpbGwgY29udGludWUgdG8gcnVuIGlu
IHRoZQo+IAo+IFFNUCBQSFk/Cj4gCgpOby4gTVBIWSBpcyB0aGUgYWN0dWFsIElQIHRoYXQgZG9l
cyB0aGUgbmVnb3RpYXRpb24uCgo+ID5kZWZhdWx0IG1vZGUgKEc0KSBldmVuIGlmIFVGU0hDRCBy
dW5zIGluIEczLiBCdXQgdGhpcyBpcyB0aGUgY2FzZSBmb3IKPiA+b3RoZXIgcGxhdGZvcm1zIGFz
IHdlbGwuCj4gCj4gU2hvdWxkIHRoaXMgYmUgZml4ZWQgYnkgYWRkaW5nIGEgc2VwYXJhdGUgc2V0
IG9mIHRhYmxlcyB1c2VkIHRvIHNldHVwIGczPwo+IAoKVGhlIGRlZmF1bHQgdGFibGUgaXMgRzMg
b25seSBidXQgdGhlIGlzc3VlIGhlcmUgaXMgdGhhdCwgd2l0aCB0aGVzZSByZWdpc3Rlcgp3cml0
ZXMsIHRoZSBVRlMgZGV2aWNlIFBBX01BWEhTR0VBUiByZWdpc3RlciBiZWNvbWVzIEczIG9ubHkg
ZHVyaW5nIE1QSFkKbmVnb3RpYXRpb24uIFNvIHRoZSBob3N0IGNhbm5vdCBzY2FsZSB1cCB0byBH
NCBldmVuIGlmIHRoZSBVRlNIQ0Qgc3VwcG9ydHMgaXQuCgpUaGFua3MsCk1hbmkKCj4gCj4gPgo+
ID5TaWduZWQtb2ZmLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFz
aXZhbUBsaW5hcm8ub3JnPgo+ID4tLS0KPiA+IGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LXFtcC11ZnMuYyB8IDcgLS0tLS0tLQo+ID4gMSBmaWxlIGNoYW5nZWQsIDcgZGVsZXRpb25zKC0p
Cj4gPgo+ID5kaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVm
cy5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4gPmluZGV4IGQ1
MzI0YzRlODUxMy4uNmM3YzZhMDZmZTNiIDEwMDY0NAo+ID4tLS0gYS9kcml2ZXJzL3BoeS9xdWFs
Y29tbS9waHktcWNvbS1xbXAtdWZzLmMKPiA+KysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tcW1wLXVmcy5jCj4gPkBAIC01NjcsMTMgKzU2Nyw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgcW1wX3BoeV9pbml0X3RibCBzbTgzNTBfdWZzcGh5X3Bjc1tdID0gewo+ID4gCVFNUF9QSFlf
SU5JVF9DRkcoUVBIWV9WNV9QQ1NfVUZTX1RYX01JRF9URVJNX0NUUkwxLCAweDQzKSwKPiA+IAlR
TVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjVfUENTX1VGU19ERUJVR19CVVNfQ0xLU0VMLCAweDFmKSwK
PiA+IAlRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjVfUENTX1VGU19SWF9NSU5fSElCRVJOOF9USU1F
LCAweGZmKSwKPiA+LQlRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjVfUENTX1VGU19QTExfQ05UTCwg
MHgwMyksCj4gPi0JUU1QX1BIWV9JTklUX0NGRyhRUEhZX1Y1X1BDU19VRlNfVElNRVJfMjBVU19D
T1JFQ0xLX1NURVBTX01TQiwgMHgxNiksCj4gPi0JUU1QX1BIWV9JTklUX0NGRyhRUEhZX1Y1X1BD
U19VRlNfVElNRVJfMjBVU19DT1JFQ0xLX1NURVBTX0xTQiwgMHhkOCksCj4gPi0JUU1QX1BIWV9J
TklUX0NGRyhRUEhZX1Y1X1BDU19VRlNfVFhfUFdNX0dFQVJfQkFORCwgMHhhYSksCj4gPi0JUU1Q
X1BIWV9JTklUX0NGRyhRUEhZX1Y1X1BDU19VRlNfVFhfSFNfR0VBUl9CQU5ELCAweDA2KSwKPiA+
LQlRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjVfUENTX1VGU19UWF9IU0dFQVJfQ0FQQUJJTElUWSwg
MHgwMyksCj4gPi0JUU1QX1BIWV9JTklUX0NGRyhRUEhZX1Y1X1BDU19VRlNfUlhfSFNHRUFSX0NB
UEFCSUxJVFksIDB4MDMpLAo+ID4gCVFNUF9QSFlfSU5JVF9DRkcoUVBIWV9WNV9QQ1NfVUZTX1JY
X1NJR0RFVF9DVFJMMSwgMHgwZSksCj4gPiAJUU1QX1BIWV9JTklUX0NGRyhRUEhZX1Y1X1BDU19V
RlNfTVVMVElfTEFORV9DVFJMMSwgMHgwMiksCj4gPiB9Owo+IAo+IC0tIAo+IFdpdGggYmVzdCB3
aXNoZXMKPiBEbWl0cnkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+
4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
