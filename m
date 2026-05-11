Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9938CD37AC
	for <linux-phy@archiver.kernel.org>; Mon, 11 May 2026 14:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OkdSqDrToDo0/jIyxG3CVgJQvTn2l8PKkJTQwFBFHbw=; b=txN5BMq73eP5gY
	rIP+h3/n434Zy2dvZhArGsC31t4PAInBFSh+sTEeDD7zC6fkAt33fGhbTNNnsoU5Hr7L9DnjOxJaN
	ObtKjblnOH9Z9fJrOz92FE9VIISd7A1be09EM+dj5hM0XQgjdFpftdCKSR9SmE5vr+j7Uv7JbXIhb
	zvEC78TjOKjCqQFbXxa972fGxePcAoYsshz9HflRFElkwYX7vYo59aoWDl94CEBLnXnXVlF0wu2JL
	XLcMw7Fc6j17NffVw6e9j62WO/uigN6zmRTjdr5dkfad27SSBP74VhJaLXrWJm/ERHLkoh0jPGYlv
	7r+GFZNsThBEs4jZGd3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMRDi-0000000DqXf-1ixb;
	Mon, 11 May 2026 14:02:54 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMRDf-0000000DqWC-0rX1
	for linux-phy@lists.infradead.org;
	Mon, 11 May 2026 14:02:52 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4830b67aa6bso5075175e9.0
        for <linux-phy@lists.infradead.org>; Mon, 11 May 2026 07:02:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778508169; x=1779112969; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=H7fD4bUEAsspIYeU1XCz4Z33/IVcGrlxp4VIfHS9bo8=;
        b=WqUfh3J0DSBjhXrWCFR9lZoucQpZ/IXye48nPsfRfLk7LZoaGpWH2RQ1O6c9rgdcRv
         mCTz6Bz+sBNVKoLiqWbjb7HEE/tq81rqwqqTfs0dyoqx0d3AT5fcBe2xGNKLvHUrOtVf
         /MW5+b89sIF4Q/I22FE8efl8Q0rp8CbI7MMriORsp5j4cAIWolbjZELvTkkH7556LgPr
         XliX7XUFR98Ni5zDJyPU6gt6w+gwgrfLlI64L9Z3ivuEeIZZHSJ1kNbbaKllnbAMm/ra
         otfQ/KJsszP4qM+jHg16PPBPTEOVoOjU5lb2gyEus85GX9ygUV9p7kP1UkUx8bS3l9B4
         cOJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778508169; x=1779112969;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H7fD4bUEAsspIYeU1XCz4Z33/IVcGrlxp4VIfHS9bo8=;
        b=BjOIGWvPfg7IGqt8u4+YcBk5wk39a7RnFpSEI89Q41o8dLviApVI8pVlknLBEnmPW/
         JK2zL2mjYnmNoGXNIcmDHBLcqNBn+4bqSmBKo/pt25ejNN2bQmn8z6P7IqPjxp1heHJ7
         +tRx38dMug9ypzgZqyepgcOYyGUVK7+Y6Ek0FgGbWxQpQQKPpMQ64IHLhqMPHg5ffdW9
         4Yo0gDxJLIpPVI2Vs14ztQw1jgZAdInRxLAZf8Iju+hwUwOJQ74NARSCMSyUPE8LwVRC
         ZfpxCXoiHqFRVCUBR97g/QOJ4Keujya+YxrJXA/PBW3T9zLz3CR80WdXZcfOQEHvg7QY
         ramQ==
X-Forwarded-Encrypted: i=1; AFNElJ/5Wkj1JBK8qOHPNZGecODVG0ydWyxVbSh/8Dw4Pk6wPjEVEuNxYmtblW2U3gkx1cdpk/McWecdh6E=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyz1SeBGAOFP7StLUw/3wiYKnHypAuitXcM0NoPAnXPC6KeHzHj
	aGYpdnEbmv5LeG5UvN/MoDlk/fO7rqqSvzvbrJ02rwLZMPVXcTVZ4D90
X-Gm-Gg: Acq92OE87Gt2HZzF5DDP4iTD1p+aY3sN+94w6qS8OXa+ddN/cTAPNu1Zx8R9x0id6uN
	WS8mr0QUJ0dFxJdP761NR4bltePLhPtiZ5L+6x8GDN+fB9sD6YHTgBBHYCmFqxNJtpa6sIR1tHg
	pawZOgZDg+jOnqqwI79ukEj1gHNTFqkOIgY8yVg5GF+hiIDb07SCHLHrLdVgKHB4Sbr1SSBp0Do
	ezSvs10wWudPGtBM+WksodAVypeWMb/aBMyOWLHNBCwDW6EX4p3yhHHgy4t3Qxx04WwN0DScrts
	lUBu25+Ondb9SbZwQSZ3JR1H4F2tRZNXWokAY8heHrVB2R0DZ3Hw1ZEEQ6wVW/X70TcD1bTMBCC
	II2FtCaKCW/JUiEykNj43MpY5qGpRFLxGnymsOqS2B8PC0GumZAUtkyzaSig4eLZs0emMCKtDqQ
	8liUHXRUjCYdrJYtk=
X-Received: by 2002:a05:600c:4510:b0:48a:79da:c87 with SMTP id 5b1f17b1804b1-48e5310852amr175491285e9.8.1778508168488;
        Mon, 11 May 2026 07:02:48 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d403:cf00:a128:7a98:678b:6a30])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48e6fff9c91sm201254695e9.1.2026.05.11.07.02.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 07:02:47 -0700 (PDT)
Date: Mon, 11 May 2026 17:02:45 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com,
	neil.armstrong@linaro.org, konrad.dybcio@oss.qualcomm.com
Subject: Re: [PATCH v3 0/5] phy: qcom: Fix possible NULL-deref and runtime PM
 race conditions
Message-ID: <20260511140245.5gftwzynmke6m5ro@skbuf>
References: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_070251_276109_0773685E 
X-CRM114-Status: GOOD (  10.03  )
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

T24gVGh1LCBGZWIgMDUsIDIwMjYgYXQgMDU6MDI6MzVQTSArMDEwMCwgTG9pYyBQb3VsYWluIHdy
b3RlOgo+IEFkZHJlc3MgcG90ZW50aWFsIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZXMgYW5kIHJh
Y2UgY29uZGl0aW9ucyByZWxhdGVkCj4gdG8gcnVudGltZSBQTSBpbiBzZXZlcmFsIFF1YWxjb21t
IFBIWSBkcml2ZXJzLiBJbiBhbGwgY2FzZXMsIGVuYWJsaW5nCj4gcnVudGltZSBQTSBiZWZvcmUg
dGhlIFBIWSBpbnN0YW5jZSBpcyBmdWxseSBpbml0aWFsaXplZCBjYW4gbGVhZCB0bwo+IGNyYXNo
ZXMgZHVyaW5nIGVhcmx5IHJ1bnRpbWUgc3VzcGVuZCBjYWxsYmFja3MuCj4gCj4gLSBBdHRhY2gg
ZHJpdmVyIGRhdGEgYmVmb3JlIGVuYWJsaW5nIHJ1bnRpbWUgUE0uCj4gLSBJbnRyb2R1Y2UgaW5p
dGlhbGl6YXRpb24gZmxhZ3Mgd2hlcmUgbmVlZGVkIHRvIGF2b2lkIGRlcmVmZXJlbmNpbmcKPiB1
bmluaXRpYWxpemVkIHBvaW50ZXJzLgo+IC0gUmVvcmRlciBwbV9ydW50aW1lX2VuYWJsZSgpIGFu
ZCBwbV9ydW50aW1lX2ZvcmJpZCgpIGNhbGxzIHRvIHByZXZlbnQKPiB1bm5lY2Vzc2FyeSBzdXNw
ZW5kL3Jlc3VtZSBjeWNsZXMgZHVyaW5nIGRyaXZlciBwcm9iZS4KPiAtIFVzZSBkZXZyZXMtbWFu
YWdlZCBQTSBydW50aW1lIGhlbHBlcnMgZm9yIHByb3BlciBjbGVhbnVwLgo+IAo+IENoYW5nZXMg
aW4gVjM6Cj4gUmViYXNlIG9uIG5leHQgYW5kIHJlbW92ZSAyLzYgKG9ic29sZXRlKQo+IAo+IENo
YW5nZXMgaW4gVjI6Cj4gU3BsaXQgcGF0Y2hlcyAyLzQgYW5kIDMvNCBzbyB0aGF0IHRoZSBudWxs
4oCRcG9pbnRlciBkZXJlZmVyZW5jZSBmaXggYW5kCj4gdGhlIHJ1bnRpbWXigJFQTSBlbmFibGUv
Zm9yYmlkIHJlb3JkZXJpbmcgYXJlIGxvZ2ljYWxseSBzZXBhcmF0ZWQuCgpFdmljdGluZyB0aGlz
IHNldCBmcm9tIFBhdGNod29yaywgd2hpY2ggZG9lcyBub3QgZXZlbiBhcHBseSBvbiBsaW51eC1w
aHkvbmV4dC4KTG9pYywgcGxlYXNlIGZvbGxvdyB1cCB3aXRoIGFuIHVwZGF0ZWQgc2V0IGlmIHlv
dSB3YW50IGEgZGlmZmVyZW50IGZvcm0Kb2YgdGhpcyB0byBiZSBtZXJnZWQuCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
