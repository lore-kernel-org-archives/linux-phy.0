Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 104D0D41D68
	for <linux-phy@archiver.kernel.org>; Tue, 12 Nov 2024 07:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rej6WDS5dS+zgpxGgY/8u0QnrI2lxlcCdR0bl7NkZX8=; b=ZaRNKOY/PGilD3
	k0aHq4TMN6GWt6vfZUsW+UfV6M5Q9Z1Jbo/s6rU4tjPdO26HLG9xQutNHLRxPMKMrHwwYpZBsyiZQ
	7tCNbPUsmrFZbOHEGAMqHmfSpHhmQZ7pAA2DcP2ef1AxiVf9oAHJvzKSS7QwbxcsYXs0RrqOaTGck
	BS3xC8Ro38tY/pM+qtEkvK27yc7QPKTAAhAvib3AK38YojJX60l/Mm2U519WNw+bMBHLPqdBu+QtF
	acRDV+pv2j82oGxNKd0uWGpYPyZmbB59bDXeGI9pOj4VsOuEM+H3bU3c7gBtqGrx9zxZGKfJwTjEh
	W5knANyQoiU8hkCIvwmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAlnY-00000002Yjx-310o;
	Tue, 12 Nov 2024 07:58:52 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAllG-00000002YJn-3J4h
	for linux-phy@lists.infradead.org;
	Tue, 12 Nov 2024 07:56:32 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-2118dfe6042so21125165ad.2
        for <linux-phy@lists.infradead.org>; Mon, 11 Nov 2024 23:56:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731398190; x=1732002990; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NefPRLN+h9TOgssrrobmBkWbrfPIcMnQcGv5XGBIdzk=;
        b=fmlXpcygnz8mpNxjW1WV+xylswX8VizHUy8xariKKPoUsxfHwbLEmDE3x2JYXEwTN+
         MHzqUuBO1Qgon6HhO1zOTClVil7AUZg8MhhmDQC4U2qlHedNDk7e0kmA26Cv9leOD0oE
         uLOU7Z7clJpl8BnHHPU96HG3HVJTBYFA8H92hZF61kz3QK2Ih/OWQ38/ftwrfOvply0G
         QPi3QmeHnoRJK1PE1MFL2+C7P293Co/AfCM84JEKIHPyea2uaFvossMyY4WI9UqWCYiA
         j+finXZT74RTVqnKQd5fC2A6QY06uKGrYvaB4QgxduGnHFpUBZ3iziX+IaDsFnLko9hx
         ml3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731398190; x=1732002990;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NefPRLN+h9TOgssrrobmBkWbrfPIcMnQcGv5XGBIdzk=;
        b=dMrRNBrXFCgbEXS2DCTO8KaodhSMNYs9yThtQQ/pa2QCnRH4wFyXVqYnwj8KJlUSoD
         9fGis1rjpIVCWVXuNPF5/mOXgSjI5A5wrsEH9nWuSHkdnQkAIQhiE8NgjJ+OgAWflipU
         Nu6RdDg/ZdRLPzu9BC3UlX+28jItuTUoDXV3bgVoeN1ciImDCZWEvqN/k7yN6YjnAnYc
         9GdrnZiWG0Zyho1fbjsV3iDKWeRRh9gftNYbdb+SkQyavNz05Fj8NTLas25YBMSt4daz
         V6MlzQQ/O/crIkUaP+aLJFwO1LQY8v/DoVFCQL+DpeEOm9n8v6DH9ix2txa/pjgCvtpQ
         /nPw==
X-Forwarded-Encrypted: i=1; AJvYcCWx5W4bhUJyl9feMYhrZZWKBSPcJoWopm7X/ntsa7SxQVlmSzZyZuQk4z0IdTnbMdziXXBqUQtAK2Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YyIMtAnHfvQH8b1h7uYUjKQ2B+7/5alsqV+jlpC02XhvmKE+ywm
	hlu6ym+EUeVBOcjaVEIawyOFNMPWjBWfj7cqWnx7bmHdxYezfkd8
X-Google-Smtp-Source: AGHT+IE0KS2NS7V7DN97gZCWihhMgbFp+BwZ71PDpPLPGgxlj/Wy496iueX09Dw83yU62q37vMBjQw==
X-Received: by 2002:a17:902:ce91:b0:20c:da98:d752 with SMTP id d9443c01a7336-211ab929e3fmr18904925ad.16.1731398189634;
        Mon, 11 Nov 2024 23:56:29 -0800 (PST)
Received: from thinkpad ([117.213.103.248])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21177e41717sm85733995ad.122.2024.11.11.23.56.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2024 23:56:29 -0800 (PST)
Date: Tue, 12 Nov 2024 13:26:19 +0530
From: Manivannan Sadhasivam <manisadhasivam.linux@gmail.com>
To: Xin Liu <quic_liuxin@quicinc.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	quic_jiegan@quicinc.com, quic_aiquny@quicinc.com,
	quic_tingweiz@quicinc.com, quic_sayalil@quicinc.com
Subject: Re: [PATCH v1 2/4] dt-bindings: ufs: qcom: Add UFS Host Controller
 for QCS615
Message-ID: <20241112075619.2ilsccnnk4leqmdy@thinkpad>
References: <20241017042300.872963-1-quic_liuxin@quicinc.com>
 <20241017042300.872963-3-quic_liuxin@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241017042300.872963-3-quic_liuxin@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241111_235630_855498_F59624B5 
X-CRM114-Status: GOOD (  13.81  )
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

T24gVGh1LCBPY3QgMTcsIDIwMjQgYXQgMTI6MjI6NThQTSArMDgwMCwgWGluIExpdSB3cm90ZToK
PiBGcm9tOiBTYXlhbGkgTG9raGFuZGUgPHF1aWNfc2F5YWxpbEBxdWljaW5jLmNvbT4JCj4gCQo+
IERvY3VtZW50IHRoZSBVbml2ZXJzYWwgRmxhc2ggU3RvcmFnZShVRlMpIEhvc3QgQ29udHJvbGxl
ciBvbiB0aGUgUXVhbGNvbW0KPiBRQ1M2MTUgUGxhdGZvcm0uCj4gCj4gU2lnbmVkLW9mZi1ieTog
U2F5YWxpIExva2hhbmRlIDxxdWljX3NheWFsaWxAcXVpY2luYy5jb20+Cj4gQ28tZGV2ZWxvcGVk
LWJ5OiBYaW4gTGl1IDxxdWljX2xpdXhpbkBxdWljaW5jLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBY
aW4gTGl1IDxxdWljX2xpdXhpbkBxdWljaW5jLmNvbT4KCkFja2VkLWJ5OiBNYW5pdmFubmFuIFNh
ZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgoKLSBNYW5pCgo+IC0t
LQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3Fjb20sdWZzLnlhbWwg
fCAyICsrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9xY29tLHVmcy55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9xY29tLHVmcy55YW1sCj4gaW5k
ZXggY2RlMzM0ZTMyMDZiLi5hMDNmZmY1ZGY1ZWYgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9xY29tLHVmcy55YW1sCj4gKysrIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9xY29tLHVmcy55YW1sCj4gQEAgLTI2LDYgKzI2
LDcgQEAgcHJvcGVydGllczoKPiAgICAgICAgICAgIC0gcWNvbSxtc204OTk0LXVmc2hjCj4gICAg
ICAgICAgICAtIHFjb20sbXNtODk5Ni11ZnNoYwo+ICAgICAgICAgICAgLSBxY29tLG1zbTg5OTgt
dWZzaGMKPiArICAgICAgICAgIC0gcWNvbSxxY3M2MTUtdWZzaGMKPiAgICAgICAgICAgIC0gcWNv
bSxxY3M4MzAwLXVmc2hjCj4gICAgICAgICAgICAtIHFjb20sc2E4Nzc1cC11ZnNoYwo+ICAgICAg
ICAgICAgLSBxY29tLHNjNzE4MC11ZnNoYwo+IEBAIC0yNDMsNiArMjQ0LDcgQEAgYWxsT2Y6Cj4g
ICAgICAgICAgY29tcGF0aWJsZToKPiAgICAgICAgICAgIGNvbnRhaW5zOgo+ICAgICAgICAgICAg
ICBlbnVtOgo+ICsgICAgICAgICAgICAgIC0gcWNvbSxxY3M2MTUtdWZzaGMKPiAgICAgICAgICAg
ICAgICAtIHFjb20sc202MTE1LXVmc2hjCj4gICAgICAgICAgICAgICAgLSBxY29tLHNtNjEyNS11
ZnNoYwo+ICAgICAgdGhlbjoKPiAtLSAKPiAyLjM0LjEKPiAKPiAKCi0tIArgrq7grqPgrr/grrXg
rqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
