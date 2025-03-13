Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32CDAC282DE
	for <linux-phy@archiver.kernel.org>; Thu, 13 Mar 2025 06:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QLpMvom2PSEgcJGq3AP096qW2151NHES7UOWUsyUlGI=; b=Y27KH/GVreIj5p
	3dR+qiz9HFY6hIdRzSLk2ayM5Yg13a6JXnvznk9Pq+sMkNMP16LQkP/JF5XkHkh7yPuHk0yYHdzrb
	vZOI4/bNzwEfzoRAGB8d7uYtbNvqydN/+BXea0Zt/1mrG1bWgTqV29H3qes+Pp6JL1PNV1IYVCJcE
	zHA8Y7NB0FjLihsFB1nohmU/HQyYHHUeoFHvpePIPs2gxZgo/mRdjfx2TBMDWoimRKXOXzRLq5SLR
	rZYG9mBY8OOdWRYvYD8KXAgi+p+9gM8udxILqew/A7xx6olWUOrzsuwqdWjxv/sjW6YCj+luoUfUV
	3N1oOU6MrHvG8WHL7BTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsbcl-0000000ABHB-3pat;
	Thu, 13 Mar 2025 06:00:55 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsbcg-0000000ABGg-3fnS
	for linux-phy@lists.infradead.org;
	Thu, 13 Mar 2025 06:00:54 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-3012885752dso1388969a91.2
        for <linux-phy@lists.infradead.org>; Wed, 12 Mar 2025 23:00:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741845649; x=1742450449; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BR/Nog4BFFAbGskl6Y3iDgtMEiZ/gcMqksEKy4uZav4=;
        b=SIlOOww8Zqc97N5Sq9iR02+w9ffjc4fMRZuugigfL0WW28ZpIbCDUjoDwfkR0ebu8U
         wLldyomf21q1oAB8iWdDwHJX+KcfseW9N/xPrdFsb6ZC+75c3EsFaWrd2Eo10uw6FGDD
         ngfyt+5prWlnPUrDqBtMVq58FDnyu/xjTDsAXdeW3ZMOfjyv6xq+3mNTrxFwdt6lH/DB
         0iNkwc+9g7sN217PLdUFFxW4bOkgOElo1IZrGYlPqPUKmFnkkh3XCrak+bzyWA9w1xwE
         qXX+Sa/RiXG8FstMR/gzg2ZTPilzizcGXdezqgN9V3Kk8QlJvWywuiHx1Yi64XEbQrdo
         WP2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741845649; x=1742450449;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BR/Nog4BFFAbGskl6Y3iDgtMEiZ/gcMqksEKy4uZav4=;
        b=NLQ4FBuZ9PDURnMWXI5mIt/4kOLakZhST4aBWsMaDythCEYpJXOVFF5eZqC+dYaHO5
         wVbAu/9gKSC12JtMdkCQH1rZhf7uydGe3C8Ci5HD8ltVB64gaD+mgumuTRWMiUqt1hSB
         drV0AzRqF9Ttx3dkNK05HqY2sEhXkv5de5X1Ignt8RUMNtx+eYS+YN4DUVNwVQagXfBI
         nDUQqXKrXM81HogZoCA7wXfkEcb5YLSSPPqEun5s373PUvrNnxIb/Srjj0WqUsQbPzAC
         jGKEBaDJtvx7RXoBNB9htlDrrY8xrNJ8wNhyRWdtQ043yt8gm/m98b2AK02z4A5aAHom
         DmPw==
X-Forwarded-Encrypted: i=1; AJvYcCW+WGpzcOBaC/TXUBAvwbIahmc3euTjng4zkOx9ISCjhI6Dv2Qm9qj4LYnNTYT044Vqws+S8UGL8k8=@lists.infradead.org
X-Gm-Message-State: AOJu0YzWhokytYZGc5eHwz2lwQly/opUib2+hbxBL13Xp4vxlCzPZlj8
	5RV7tyeCjwxkuKN2Vr/v3/r8RE26mYX7dHA8BpjcXSIvQOvNR1D3NO3gYpjJRA==
X-Gm-Gg: ASbGncur/EGyBTOFEATuFJBWa+NHY82yw3WRNAGH29O3IxRICl4qteAZWno3vkyXgDk
	EJHR8TGAAt7eKXxrG8EXXq06f0sBigVfwdgojr8FlZ8DDFvozL7tC1EzELJZCpgAIr+bMQPJBgC
	lhotW2Vmu0lKi1FMD60EYd8mEZx6v92HUxTDw6iqzOfoU5W6QMpCmGzNQR3+7OJlay6/WSwwgV9
	hZZ4WI3YoeOPHpk46CR8uD+uyZ7Fk9MbW0m8XzClbhGfTpiWFDXyp3gqEK9TKW5AFdwmlFaghpB
	fjxLAjI6BeWCHfMatnd6m00PmsMUJtzIIwDB8dU5Bq+sA7R1yLQhNg==
X-Google-Smtp-Source: AGHT+IHd7v3l5gC+ULRc3VvMD4ILgDoSZwbG5Pc5B7gUogOGvMxCnx3dXhAQVvQfzF5QcQ4WhJ3dFQ==
X-Received: by 2002:a05:6a20:85aa:b0:1f5:9961:c29 with SMTP id adf61e73a8af0-1f599612c17mr9615691637.21.1741845649523;
        Wed, 12 Mar 2025 23:00:49 -0700 (PDT)
Received: from thinkpad ([120.60.60.84])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73711578d15sm527696b3a.82.2025.03.12.23.00.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Mar 2025 23:00:49 -0700 (PDT)
Date: Thu, 13 Mar 2025 11:30:41 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	andersson@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
	devicetree@vger.kernel.org, dmitry.baryshkov@linaro.org,
	kishon@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
	kw@linux.com, lpieralisi@kernel.org, p.zabel@pengutronix.de,
	quic_nsekar@quicinc.com, robh@kernel.org, robimarko@gmail.com,
	vkoul@kernel.org, quic_srichara@quicinc.com
Subject: Re: [PATCH v3 4/6] PCI: qcom: Add support for IPQ5018
Message-ID: <20250313060041.27fdpovo6kerlyft@thinkpad>
References: <20250305134239.2236590-1-george.moussalem@outlook.com>
 <DS7PR19MB8883AB310FF217F669FE32939DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DS7PR19MB8883AB310FF217F669FE32939DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_230050_943721_7E3DCB02 
X-CRM114-Status: GOOD (  14.31  )
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

T24gV2VkLCBNYXIgMDUsIDIwMjUgYXQgMDU6NDE6MjlQTSArMDQwMCwgR2VvcmdlIE1vdXNzYWxl
bSB3cm90ZToKPiBGcm9tOiBTcmljaGFyYW4gUmFtYWJhZGhyYW4gPHF1aWNfc3JpY2hhcmFAcXVp
Y2luYy5jb20+Cj4gCj4gQWRkIElQUTUwMTggcGxhdGZvcm0gd2l0aCBpcyBiYXNlZCBvbiBRY29t
IElQIHJldi4gMi45LjAKPiBhbmQgU3lub3BzeXMgSVAgcmV2LiA1LjAwYS4KPiAKPiBUaGUgcGxh
dGZvcm0gaXRzZWxmIGhhcyB0d28gUENJZSBHZW4yIGNvbnRyb2xsZXJzOiBvbmUgc2luZ2xlLWxh
bmUgYW5kCj4gb25lIGR1YWwtbGFuZS4gU28gbGV0J3MgYWRkIHRoZSBJUFE1MDE4IGNvbXBhdGli
bGUgYW5kIHJlLXVzZSAyXzlfMCBvcHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTml0aGVlc2ggU2Vr
YXIgPHF1aWNfbnNla2FyQHF1aWNpbmMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFNyaWNoYXJhbiBS
IDxxdWljX3NyaWNoYXJhQHF1aWNpbmMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEdlb3JnZSBNb3Vz
c2FsZW0gPGdlb3JnZS5tb3Vzc2FsZW1Ab3V0bG9vay5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZh
bm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KCi0gTWFu
aQoKPiAtLS0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMgfCAxICsK
PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9kd2MvcGNpZS1xY29tLmMKPiBpbmRleCBlNGQzMzY2ZWFkMWYuLjk0ODAwYzIxN2QxZCAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+ICsrKyBi
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4gQEAgLTE4NDAsNiArMTg0
MCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHFjb21fcGNpZV9tYXRjaFtd
ID0gewo+ICAJeyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUtYXBxODA2NCIsIC5kYXRhID0gJmNm
Z18yXzFfMCB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUtYXBxODA4NCIsIC5kYXRh
ID0gJmNmZ18xXzBfMCB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUtaXBxNDAxOSIs
IC5kYXRhID0gJmNmZ18yXzRfMCB9LAo+ICsJeyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUtaXBx
NTAxOCIsIC5kYXRhID0gJmNmZ18yXzlfMCB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJxY29tLHBj
aWUtaXBxNjAxOCIsIC5kYXRhID0gJmNmZ18yXzlfMCB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJx
Y29tLHBjaWUtaXBxODA2NCIsIC5kYXRhID0gJmNmZ18yXzFfMCB9LAo+ICAJeyAuY29tcGF0aWJs
ZSA9ICJxY29tLHBjaWUtaXBxODA2NC12MiIsIC5kYXRhID0gJmNmZ18yXzFfMCB9LAo+IC0tIAo+
IDIuNDguMQo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprg
rr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
