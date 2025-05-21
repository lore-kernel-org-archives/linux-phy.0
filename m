Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F7EAC54E71
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 14:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YGctXyZ/i03V6GmCI8F0hp57nZYjgBkCJfA9tIb5Zqw=; b=q82HSugOPmOJ5b
	Fh4CgY3KUOl13TNssXCHOKXEGz0K7qFySJyt+//57C/C8wrkcEOdesLfL8JJHDeBVdzJoZjPdUCD9
	Zkb1rs9SQPocqb9nG3fAWJhX2xteBPovU8ZQpS5oLY/aocIjyczDHdJ7p0fTzi+MvtmG6zR7UJsHQ
	r70IXlkfE6Z2fFlPU36SttYJOGqMrGW05S4UQTX4Rcc63nWcbTUMtrKGzln1GOKzgqasWQvNxv40z
	ixlf/NnuwazWju9MAPOlHC6gOtALjRlR9nlc1gp430iLicB9CJ+OwvQjc1owiw1GjRLZd1x2VUxvj
	hKkPXY4wKCfj4Xue2r7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHk6M-0000000G2z7-46DB;
	Wed, 21 May 2025 14:07:22 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjT3-0000000Fw0s-39dM
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 13:26:46 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-22c33677183so55700725ad.2
        for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 06:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747834005; x=1748438805; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vsAPeVY9F4Ep0Af1IsuKENhPXpnyEXq+ZRKN1+hGmWI=;
        b=XEHp863oLH8S8dVDU17i8AWyNsB+vM9ZSqZ2TmSGZnJgy8ixak5P/EbiB5HOiNbUXt
         /ynzuWBB1/Z30C32axQpTFejfGbiNUzpWwGIvoOY0t2VEMb1ob9xa5BbeJin8HKMp8Gp
         gKjl11kZp0jiqTQI9OSmNKNxk4PzCKFfcd6IvU9ivVuIuMy15YgYW2EJToCfGS90rGYc
         mSBCmV+sgzdU3iZVviZ0IVhdigjfj73jvmYptEvBzJCt8oOPq7zpzNLUwW8VTqs04Uj2
         +ccbtSpdWYIwROQfFLAgglhp+TmdlQHx1S0rSD0Y+0BfbU0hvkw85zb/wsD1c628j5uH
         lBDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747834005; x=1748438805;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vsAPeVY9F4Ep0Af1IsuKENhPXpnyEXq+ZRKN1+hGmWI=;
        b=LBTgawb903Dk0GcixJbZLogk+F2N9+AVG1OWuRWl2XOpECpMhQKlTqgPonD9JqwSGQ
         BewimSGG+XDQbo4yaK3oYuCBNsnsB2ZnQHPpsLKmmgNiVUqjo9jXc304dfxeJnPjvWux
         3L+9YjqL27l96z4RCwseyIFuMRAZpXPPGoqRigYwmPvUitOTC83+/PuCk8y6rrlEWJbT
         zeZK8HwOw69XAJ1kNYq556tvdyrCL7vaMVhFXhfPpSZ5ui1QOlhl6ZfgAY9T8B006nko
         dKM3guDr3k1tEeFJtSBT5aktaBloCzc87vkuimcOUi2ezqftIdv+SBqJdqPbxNNQc0qu
         wNcQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdm7mtn2PSBnoGxJ4AiLjGIF4pIHJxM0R4e4sZNvjNZpwKtMg3zdVT3NykxOqroctKd+IFRFLZnoY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzPiVZhbrOlP5HxsTqGt5+tVE6saNo+VJYday+H8Qu+jv93U3m2
	kkX/sUBzK298WalYEDunzyaRVIjBrMGXf3u4+oPcEXUXxpyBLFbX3661XvBb1jZZ0Q==
X-Gm-Gg: ASbGnctr4ut17Fa2XpgdIwNQNCdW5DEACeqYusR9wBqMRFzknNjt1YQzsrHUdm+h2HR
	GaD4ObLMcU9ARpU9+LTDdKN1dYhGxjSx3do5i5jchErDRNpke988Bz75G5r3f31BZGRkxd+ixjD
	ehNRw+i4Z9pSZ8AwErjGnzmr6Lcb16c4Wwd4buHsb0lWuOeMcSiPmGb0tfg1/7VsXc9zO7/085u
	p4uRdyeWRyGdAdwZhXKUCmHIsGIKHnbd8spyFC0IP0L5IZri4Ms4JsvQWkCPtABev4ERXbXPIoB
	m3k06X8yzoYpK4qlEmxHSnm3Do1zOnw3W8gwBsy6drKRWfQ2xGY9fAgxhgSnrbzm7tSgxCc=
X-Google-Smtp-Source: AGHT+IFBDTatb/Wv2ODO3rVWJekx3BLDAeNfQgIP1zt45t6SjBWL/VcQDCAoRuUemYsln1KAeEC4/g==
X-Received: by 2002:a17:902:efc9:b0:231:fc6a:244a with SMTP id d9443c01a7336-231fc6a24a2mr179505555ad.2.1747834004862;
        Wed, 21 May 2025 06:26:44 -0700 (PDT)
Received: from thinkpad ([120.60.52.42])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2320418f249sm74691545ad.215.2025.05.21.06.26.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 06:26:44 -0700 (PDT)
Date: Wed, 21 May 2025 14:26:37 +0100
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, 
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com, bvanassche@acm.org, 
	andersson@kernel.org, neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com, 
	konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com, quic_cang@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org
Subject: Re: [PATCH V5 04/11] phy: qcom-qmp-ufs: Refactor UFS PHY reset
Message-ID: <mwcqp3mxuheffc6x7w4w5mykqc57ovmvyrmh3ky5czjf54wnag@fxnxgsoi6y2u>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
 <20250515162722.6933-5-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250515162722.6933-5-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_062645_811366_DAEC3FE0 
X-CRM114-Status: GOOD (  18.49  )
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

T24gVGh1LCBNYXkgMTUsIDIwMjUgYXQgMDk6NTc6MTVQTSArMDUzMCwgTml0aW4gUmF3YXQgd3Jv
dGU6Cj4gUmVmYWN0b3IgdGhlIFVGUyBQSFkgcmVzZXQgaGFuZGxpbmcgdG8gcGFyc2UgdGhlIHJl
c2V0IGxvZ2ljIG9ubHkgb25jZQo+IGR1cmluZyBpbml0aWFsaXphdGlvbiwgaW5zdGVhZCBvZiBl
dmVyeSByZXN1bWUuCj4gCj4gQXMgcGFydCBvZiB0aGlzIGNoYW5nZSwgbW92ZSB0aGUgVUZTIFBI
WSByZXNldCBwYXJzaW5nIGxvZ2ljIGZyb20KPiBxbXBfcGh5X3Bvd2VyX29uIHRvIHRoZSBuZXcg
cW1wX3Vmc19waHlfaW5pdCBmdW5jdGlvbi4KPiAKCk1vcmUgaW1wb3J0YW50bHksIHlvdSBhcmUg
aW50cm9kdWNpbmcgdGhlIHBoeV9vcHM6OmluaXQgY2FsbGJhY2ssIHdoaWNoCnNob3VsZCd2ZSBi
ZWVuIG1lbnRpb25lZC4KCj4gQ28tZGV2ZWxvcGVkLWJ5OiBSYW0gS3VtYXIgRHdpdmVkaSA8cXVp
Y19yZHdpdmVkaUBxdWljaW5jLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBSYW0gS3VtYXIgRHdpdmVk
aSA8cXVpY19yZHdpdmVkaUBxdWljaW5jLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBOaXRpbiBSYXdh
dCA8cXVpY19uaXRpcmF3YUBxdWljaW5jLmNvbT4KPiBSZXZpZXdlZC1ieTogRG1pdHJ5IEJhcnlz
aGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBvc3MucXVhbGNvbW0uY29tPgo+IC0tLQo+ICBkcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMgfCA1OSArKysrKysrKysrKysrLS0tLS0t
LS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspLCAyOCBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVm
cy5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4gaW5kZXggYWRl
OGU5YzRiOWFlLi4zM2QyMzhjZjQ5YWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNv
bW0vcGh5LXFjb20tcW1wLXVmcy5jCj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20tcW1wLXVmcy5jCj4gQEAgLTE4MDAsMzggKzE4MDAsMTEgQEAgc3RhdGljIGludCBxbXBfdWZz
X2NvbV9leGl0KHN0cnVjdCBxbXBfdWZzICpxbXApCj4gIHN0YXRpYyBpbnQgcW1wX3Vmc19wb3dl
cl9vbihzdHJ1Y3QgcGh5ICpwaHkpCj4gIHsKPiAgCXN0cnVjdCBxbXBfdWZzICpxbXAgPSBwaHlf
Z2V0X2RydmRhdGEocGh5KTsKPiAtCWNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyAqY2ZnID0gcW1w
LT5jZmc7Cj4gIAlpbnQgcmV0Owo+ICAJZGV2X3ZkYmcocW1wLT5kZXYsICJJbml0aWFsaXppbmcg
UU1QIHBoeVxuIik7Cj4gIAo+IC0JaWYgKGNmZy0+bm9fcGNzX3N3X3Jlc2V0KSB7Cj4gLQkJLyoK
PiAtCQkgKiBHZXQgVUZTIHJlc2V0LCB3aGljaCBpcyBkZWxheWVkIHVudGlsIG5vdyB0byBhdm9p
ZCBhCj4gLQkJICogY2lyY3VsYXIgZGVwZW5kZW5jeSB3aGVyZSBVRlMgbmVlZHMgaXRzIFBIWSwg
YnV0IHRoZSBQSFkKPiAtCQkgKiBuZWVkcyB0aGlzIFVGUyByZXNldC4KPiAtCQkgKi8KPiAtCQlp
ZiAoIXFtcC0+dWZzX3Jlc2V0KSB7Cj4gLQkJCXFtcC0+dWZzX3Jlc2V0ID0KPiAtCQkJCWRldm1f
cmVzZXRfY29udHJvbF9nZXRfZXhjbHVzaXZlKHFtcC0+ZGV2LAo+IC0JCQkJCQkJCSAidWZzcGh5
Iik7Cj4gLQo+IC0JCQlpZiAoSVNfRVJSKHFtcC0+dWZzX3Jlc2V0KSkgewo+IC0JCQkJcmV0ID0g
UFRSX0VSUihxbXAtPnVmc19yZXNldCk7Cj4gLQkJCQlkZXZfZXJyKHFtcC0+ZGV2LAo+IC0JCQkJ
CSJmYWlsZWQgdG8gZ2V0IFVGUyByZXNldDogJWRcbiIsCj4gLQkJCQkJcmV0KTsKPiAtCj4gLQkJ
CQlxbXAtPnVmc19yZXNldCA9IE5VTEw7Cj4gLQkJCQlyZXR1cm4gcmV0Owo+IC0JCQl9Cj4gLQkJ
fQo+IC0JfQo+IC0KPiAgCXJldCA9IHFtcF91ZnNfY29tX2luaXQocW1wKTsKPiAtCWlmIChyZXQp
Cj4gLQkJcmV0dXJuIHJldDsKPiAtCj4gLQlyZXR1cm4gMDsKPiArCXJldHVybiByZXQ7CgpUaGlz
IGNhbid0IGJlOgoJcmV0dXJuIHFtcF91ZnNfY29tX2luaXQ7ID8KCi0gTWFuaQoKLS0gCuCuruCu
o+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
