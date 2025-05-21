Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0FBEC2D0CD
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 14:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vBokLwbFL+/MD57C072M1utJHpbATK0dcxBRVlRlVA8=; b=bWfCJuwYgw4IPC
	MO+2IakciFP8TW5qSSAtygFVoHSDrNoi8U6AvUt/GLsCzmG/XFm5X5uXETpCjR9mqh9gs0heHsFFJ
	Fg6woKhhDfxmIsD4KBabMe0NS97s3fSLd0hwHTn/rc3+VGzd30ViEP/yFMvnnJS9s/xjuQCvEtoe0
	nKsOLXuSGAVs5+AQwxW2XtyaZhwBAi5LrFmN5jiFCSo4gjzgdytC6ky2BaL+2koVHSNfLVn9cddZH
	gaXvQFZWDlVQE7aIH4+igsMnr1i1uPOncTrIvv4fKUe8hlQZOilGMmXBkNXCHxjicw6eKwS77t5Xd
	qZ54JTAWw4DqrmbzFQ4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHkLQ-0000000G5z3-2cyF;
	Wed, 21 May 2025 14:22:56 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHk4C-0000000G2bN-1O5I
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 14:05:09 +0000
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-30e8feb1886so5409124a91.0
        for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 07:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747836307; x=1748441107; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oUWooNZYiRwIGE0ZkFwzsulXCDj0quWAKViua2SU9iQ=;
        b=YES7oWF+uSneQhtboDzlRdZPs1tnGHADfe74uo+dO20qm2tPOU8vHf9q/NR+tfizLR
         Y6U3gkzgznfGhvbCVWYKkLFz5ucjqS5LorxzE8cim0fnb/UvXEYyACUyjdktYUXqCPV4
         fJyctWp08n7w8dD1KhBTFVAYDJQthotHDeMMLQ5i5cFfHrdDZmuE0zWfMuXB1A0u5hQu
         XA46HgFlH5PUNJA9rjL/axJHFn1C59GwJll5Lfg/iRRUVBidjx8Wale88NEfmlaNkhK1
         P221Zet3wMjZhFUCnNuvG9XFz4XtGh4Fo5zu5lzsgXedZGPDGhhm2+U/n8N55e4/bTF5
         DNhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747836307; x=1748441107;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oUWooNZYiRwIGE0ZkFwzsulXCDj0quWAKViua2SU9iQ=;
        b=qHJ/CTqOMG1jKVutpUtY7iJbymMNZvDsjBF0M72653xbslQwzpATZm3T3U1uoDrdy0
         NYkcNXXXj+3jKrqmFVj0KScXPq1LZJUA4pLTeWKHKPx11Ul/F/8YaIoLf9CBkIVjerFn
         U0GuznS5B2Ukr6gTLkQzXzIlqAoNIeLx493R86pQbKxCv5H/sQ9DERiTKt59rwWRaF25
         XVjbLwPb8XeNe2UKJmxO23FRqlT/dgmZxvcL9ISW5JT1R98iGYHY4CknCHYjJ+ptTA/8
         ed0HMdXQbd9tSmTFCIoPxdNsxGLEkGNPDQyDmP4Xq9cs0cJtS95eSoc2m8beofIjtvJQ
         MIEg==
X-Forwarded-Encrypted: i=1; AJvYcCVq8oe2SPH8PyzJN6D5PvUD1pnbsesbBfDSnjeoDTtwSNufTinKCXNT/Z16BnHQy5CFXyTqAfEz3nM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7O9FuLufpfencsdCcbEYzztUTBaUls126UdzK+P2u4gIGFK30
	SIpP/q6cm5CayurgveTuh06acpCESDG4bb1zXIc+tsnW+AFwovhRWmtBGKOImyTNRoExllACgW7
	OqvQ=
X-Gm-Gg: ASbGncuvkDXEuC5K9KF7IStTGEMxf4NTtKePneD6ldyF81iDdt9ydGajMkOWO+t51ET
	R0OGiuPbIBWYZK6aqpAjS/sC7H1Q9+hCNMLtI3YAd3mbUB6agMbAnp/x/37C0nrcZdfUx7XwxjY
	weVw7zbW4amuHaIeU84bIf/rb6BW5+3nKDDkVM1JwgYaH6OsSZcZ4XoZjoHFHd5tsLRAcURfZAn
	YS+ZIpky1PjyQfM/WSd82ps+w2dqR9McpeOGLOVjtD52NxO34IPgbF/gNOfnS2zd4bguwmHCQVD
	tsns8vq87+oQ1k4AHb/2PVJEOVMwTa1Vs5+1euAQCaaVPM2vRi//MWGLh9Jk
X-Google-Smtp-Source: AGHT+IGF1UnNuTClUj3F4HuLJBTg4YIotq8v2Lv2C3f9MvdLIN/G13XG5gdSvc29YxyEeac8afv8yw==
X-Received: by 2002:a17:90b:4f4c:b0:2fa:137f:5c61 with SMTP id 98e67ed59e1d1-30e7d51faa1mr36743016a91.12.1747836307303;
        Wed, 21 May 2025 07:05:07 -0700 (PDT)
Received: from thinkpad ([120.60.52.42])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-310a67c5703sm1028239a91.2.2025.05.21.07.05.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 07:05:06 -0700 (PDT)
Date: Wed, 21 May 2025 15:05:00 +0100
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, 
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com, bvanassche@acm.org, 
	andersson@kernel.org, neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com, 
	konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com, quic_cang@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org
Subject: Re: [PATCH V5 11/11] scsi: ufs: qcom: Prevent calling phy_exit
 before phy_init
Message-ID: <xxkv25y4m2lr6746fddzlxmgmgqazdqh2pjfzymuatkmrthsnw@6i52rpntjl34>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
 <20250515162722.6933-12-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250515162722.6933-12-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_070508_380659_22B4B180 
X-CRM114-Status: GOOD (  15.61  )
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

T24gVGh1LCBNYXkgMTUsIDIwMjUgYXQgMDk6NTc6MjJQTSArMDUzMCwgTml0aW4gUmF3YXQgd3Jv
dGU6Cj4gUHJldmVudCBjYWxsaW5nIHBoeV9leGl0IGJlZm9yZSBwaHlfaW5pdCB0byBhdm9pZCBh
Ym5vcm1hbCBwb3dlcgo+IGNvdW50IGFuZCB0aGUgZm9sbG93aW5nIHdhcm5pbmcgZHVyaW5nIGJv
b3QgdXAuCj4gCj4gWzUuMTQ2NzYzXSBwaHkgcGh5LTFkODAwMDAucGh5LjA6IHBoeV9wb3dlcl9v
biB3YXMgY2FsbGVkIGJlZm9yZSBwaHlfaW5pdAo+IAo+IEZpeGVzOiA3YmFjNjU2ODc1MTAgKCJz
Y3NpOiB1ZnM6IHFjb206IFBvd2VyIG9mZiB0aGUgUEhZIGlmIGl0IHdhcyBhbHJlYWR5IHBvd2Vy
ZWQgb24gaW4gdWZzX3Fjb21fcG93ZXJfdXBfc2VxdWVuY2UoKSIpCj4gU2lnbmVkLW9mZi1ieTog
Tml0aW4gUmF3YXQgPHF1aWNfbml0aXJhd2FAcXVpY2luYy5jb20+CgpZb3Ugc2hvdWxkIG1vdmUg
dGhpcyBmaXggdG8gdGhlIHN0YXJ0IG9mIHRoZSBzZXJpZXMgc28gdGhhdCBpdCBjYW4gYmUgYXBw
bGllZApzZXBhcmF0ZWx5IGlmIG5lZWRlZCBhbmQgYWxzbyB0byBiZSBiYWNrcG9ydGVkIGNsZWFu
bHkuCgo+IFJldmlld2VkLWJ5OiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFs
Y29tbS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvdWZzL2hvc3QvdWZzLXFjb20uYyB8IDEgLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Vm
cy9ob3N0L3Vmcy1xY29tLmMgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1xY29tLmMKPiBpbmRleCA1
ODNkYjkxMGVmZDQuLmJkN2Y2NTUwMGRiNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Vmcy9ob3N0
L3Vmcy1xY29tLmMKPiArKysgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1xY29tLmMKPiBAQCAtNTQw
LDcgKzU0MCw2IEBAIHN0YXRpYyBpbnQgdWZzX3Fjb21fcG93ZXJfdXBfc2VxdWVuY2Uoc3RydWN0
IHVmc19oYmEgKmhiYSkKPiAgCj4gIAlpZiAocGh5LT5wb3dlcl9jb3VudCkgewo+ICAJCXVmc19x
Y29tX3BoeV9wb3dlcl9vZmYoaGJhKTsKPiAtCQlwaHlfZXhpdChwaHkpOwo+ICAJfQoKWW91IGRv
bid0IG5lZWQgYnJhY2VzIG5vdy4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+Cu
qeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
