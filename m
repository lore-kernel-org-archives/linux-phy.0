Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7286BC2D0CD
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 13:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k9BAKPiG3PRy8WXYMSMTT97fLFDHf05QtH5vAEBFnZU=; b=FZ5bf4e7IWCbgX
	hkeDMQQ1NveFUmT2yzHnQRbRyH8R6fc37PxH4OdbTb3jxUUK/iQod9HNiog6SKwKdJNjtH/lCUpaz
	XCQyyZYgdRb8eCnmrh5KS4DE7yFJl8J75HTDTuB/BwuxVOovGEvez28GUwuqKapAsmlKoNb9hLr99
	eid9dcY0wajkQZfGG+FFy3wnVx0ttQCh53ML4xa8oH3S/qthGYawTyLGZi0H3QYDYtyY/0ZtVj6Sx
	lzFpcN6Y4gA/ZJeRA+iW7XhfzbeV5rog6XUjQffkA23XUSoSjG+ZIkOFSvDqwdSf6Y7bQxIrg0L5n
	jIjXvYkRAQ/i6z5mTb4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjmx-0000000FzGF-0pUg;
	Wed, 21 May 2025 13:47:19 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjBF-0000000Fsog-1V2k
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 13:08:22 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-742c5f3456fso3011715b3a.0
        for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 06:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747832900; x=1748437700; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xt5u1NW+UKPTvEFieJrj+mDAWfwc6t4eZFA83UFoe+Y=;
        b=eqvSUoZOjRjv6ZpRQv9MYRGsSdmBE1VQ8YOGUCqgbfuoL0rmg/Lipy53gH89POYuuw
         X72BLRa0GJG4WZHwGmpLdzSL3YEeSJcf6NFs2v1LDXvp6Vqm/aISKnRTZ3b7wFUAWOKd
         IvCsnLVYFmNuV+l3qZh6yRA5H1u97kBqHUoyeqKm7cjMLgdBbR2/2bEm3k9nVwbMT4Pe
         SF5w89WDDlF2ZtwPReB+zsgKdXp7U1Cv0/HW9AK3f/cijtpXNbTtNVZORD2pSbo9xT67
         9vSTUJneeD/XujHL9OpVhBNHn9QEmFQ3UqVJUeCaasZNhMIzlBaACM2XQIOY8BS0MYlO
         wx6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747832900; x=1748437700;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xt5u1NW+UKPTvEFieJrj+mDAWfwc6t4eZFA83UFoe+Y=;
        b=AbRCU+zcGVhYuAzgu+1K1d0fTaxULOJ4fzadYOt0DauFhXmcLn1DGVS+A5t1ikDG3/
         38M3yy1PQpvWMJop867Ot1rrPLixUkLlrrk61fq4MvpjDQdUOVBNFA7QkAFmzXVsJqIf
         Pkv6jjD9qPtoWraZ03AFcQLAs+VNOM9/Bjx0vLnyx72LoRmhr8zPgp9SZtAfZKDLz4Mp
         Z35/MXiK9kgs3VDNF70LWecOo2wdHT3UDgvHWGjAPeS/7EzT+DxoA1dVhA2aViKwMm7w
         Qm7lzM2gGvsdEQkCltAyvgY1cqsOnPdND1aGzmjiD1TAYXIywDB0iEhCg14sAfGrO113
         lSWg==
X-Forwarded-Encrypted: i=1; AJvYcCXAnu/fO3P+I70yhjAfYy9sxiDC05LwzgVtQhZq+BD7Q59xYG2ebsEP7kSCjQuMWvMezVNUqgXqVeY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzc/7VHoE95iILeBWy6TxuFjEt05icalpwDfXHAyHUc9BMsnped
	91snLN5W0wmD9M9Q7WdKch/qphJDJHMunwyFAbgVW4KyObvWAsZyq0SeaunxiE1MFA==
X-Gm-Gg: ASbGncuGVzHDbw2Ch/5lGnZU/eleQghspTweijKWOGZUYuORkB41//MH1wriWxhCP+R
	Ma/fzrU/jPr7enbK73jn+yngv+ECcBmN7W+/+P2gx2y0G9+7gNyz4C4xwI62jczJDwqMSl9dZjt
	2dmbuEHF6g7psfBILF1ac00tbn1/akNDd2N5xScas4ztNceGoDzQyH8UFi1F4qa+o9zAEkE3x67
	TvAG8suZfravGQG/ZqQXGsYjxUfvgedlEXpZu/0N5eicnvkzAd+gzlcP4jjmh7EOdzpyrhwMyTA
	2SMv0VJ7YfNDApAsfQSmmhf90CPMwBkQ7NUFIG+jvjIiAYFHrDLkQ1KuTMyj
X-Google-Smtp-Source: AGHT+IHascvxCoFVkA31LZBdvW7jzau3iUVkHksoNUV8TEsEK7Xh8qeVnLYOu02jnBVSWphaqJ0viA==
X-Received: by 2002:aa7:888e:0:b0:742:a02e:dd8d with SMTP id d2e1a72fcca58-742a98b4a84mr28669364b3a.20.1747832899901;
        Wed, 21 May 2025 06:08:19 -0700 (PDT)
Received: from thinkpad ([120.60.52.42])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a970d5c4sm9842432b3a.65.2025.05.21.06.08.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 06:08:19 -0700 (PDT)
Date: Wed, 21 May 2025 14:08:06 +0100
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, 
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com, bvanassche@acm.org, 
	andersson@kernel.org, neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com, 
	konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com, quic_cang@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org
Subject: Re: [PATCH V5 01/11] scsi: ufs: qcom: add a new phy calibrate API
 call
Message-ID: <jnftkie5c5hi6nqhliktxqbj7gykj53lvm5gibt3fjdcq7dber@bh4fxrp3fezu>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
 <20250515162722.6933-2-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250515162722.6933-2-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_060821_402056_045C2877 
X-CRM114-Status: GOOD (  16.67  )
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

T24gVGh1LCBNYXkgMTUsIDIwMjUgYXQgMDk6NTc6MTJQTSArMDUzMCwgTml0aW4gUmF3YXQgd3Jv
dGU6Cj4gSW50cm9kdWNlIGEgbmV3IHBoeSBjYWxpYnJhdGUgQVBJIGNhbGwgaW4gdGhlIFVGUyBR
dWFsY29tbSBkcml2ZXIgdG8KPiBzZXBhcmF0ZSBwaHkgY2FsaWJyYXRpb24gZnJvbSBwaHkgcG93
ZXItb24uIFRoaXMgY2hhbmdlIGlzIGEgcHJlY3Vyc29yCj4gdG8gdGhlIG5leHQgcGF0Y2hzZXQg
aW4gdGhpcyBzZXJpZXMsIHdoaWNoIHJlcXVpcmVzIHRoZXNlIHR3byBvcGVyYXRpb25zCgonbmV4
dCBwYXRjaHNldCBpbiB0aGUgc2VyaWVzJyB3b3VsZG4ndCBtYWtlIHNlbnNlIG9uY2UgdGhpcyBw
YXRjaCBnZXRzIG1lcmdlZC4KVGhleSBhbGwgYmVjb21lIGNvbW1pdHMuIFNvIHlvdSBzaG91bGQg
bWVudGlvbiAnc3VjY2Vzc2l2ZSBjb21taXRzJy4KCj4gdG8gYmUgZGlzdGluY3QuCj4gCj4gU2ln
bmVkLW9mZi1ieTogTml0aW4gUmF3YXQgPHF1aWNfbml0aXJhd2FAcXVpY2luYy5jb20+CgpSZXZp
ZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGlu
YXJvLm9yZz4KCi0gTWFuaQoKPiAtLS0KPiAgZHJpdmVycy91ZnMvaG9zdC91ZnMtcWNvbS5jIHwg
NiArKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1xY29tLmMgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1x
Y29tLmMKPiBpbmRleCAzNzg4N2VjNjg0MTIuLjIzYjRmYzg0ZGM4YyAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3Vmcy9ob3N0L3Vmcy1xY29tLmMKPiArKysgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1x
Y29tLmMKPiBAQCAtNTMxLDYgKzUzMSwxMiBAQCBzdGF0aWMgaW50IHVmc19xY29tX3Bvd2VyX3Vw
X3NlcXVlbmNlKHN0cnVjdCB1ZnNfaGJhICpoYmEpCj4gIAkJZ290byBvdXRfZGlzYWJsZV9waHk7
Cj4gIAl9Cj4gIAo+ICsJcmV0ID0gcGh5X2NhbGlicmF0ZShwaHkpOwo+ICsJaWYgKHJldCkgewo+
ICsJCWRldl9lcnIoaGJhLT5kZXYsICJGYWlsZWQgdG8gY2FsaWJyYXRlIFBIWTogJWRcbiIsIHJl
dCk7Cj4gKwkJZ290byBvdXRfZGlzYWJsZV9waHk7Cj4gKwl9Cj4gKwo+ICAJdWZzX3Fjb21fc2Vs
ZWN0X3VuaXByb19tb2RlKGhvc3QpOwo+ICAKPiAgCXJldHVybiAwOwo+IC0tIAo+IDIuNDguMQo+
IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7g
r40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
