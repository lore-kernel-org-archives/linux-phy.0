Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79FDE606D821
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 22:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Dwjqlr2u;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=pIk3D3ns
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=TaepxRWd3V+5cNdaH2abFYVmMTL9F01p/uEE9Aje5Do=; b=Dwjqlr2uTV80hsrB2odXAzDsUu
	3olOjqda4qz6U0lDmJzUJOOYdrRvkHaC6ic3LtHHXAvQVmbTS7aVDgCbMjrfA4vHAWEnAqMNWNf+o
	0bUNFFBWF6knbnV1tbwiNpiHxTB1sszxdR10JSyqmwZI1e3X9QLjgMA1wJzm7XT6j7lY5KM7gqyNf
	ACqu32/Ly894FlGWwDPoMammf3V3A0IY4bS1r/Wd+hohFPMBbQNFLMxwkHGo6LAhuyXD5vV5J+pbI
	W2UXpbA7fI/SkNqcUmneulqRDJF9qi6ugTuyOY4oovQ1j+gFvEUgbhnmhiirHeGECPj/at7B/UXhW
	9TELRpcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO098-00000000Wgs-0DWG;
	Mon, 02 Nov 2026 22:04:54 +0000
Received: from mail-dy1-x1332.google.com ([2607:f8b0:4864:20::1332])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO096-00000000WgW-1NTQ
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 22:04:53 +0000
Received: by mail-dy1-x1332.google.com with SMTP id 5a478bee46e88-3514b90bb89so7247247eec.1
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 14:04:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793657091; x=1794261891; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=3teTHgI6eBV8JhAHU1p2Vd46MVJYm6aXsAh7Xpa5ptw=;
        b=pIk3D3nsv7dlcCDIpiHet1mLnqXINGdI7OeQ+/mpMsjTgUsBLQztnC3WSruK0VhBeO
         ImtPKoScijd4DAEYm87syuyD3NgvKRQ908zkNbhfz5qG6QUWoA07WV0DlIITyiaBHWzd
         G5KkQMeTANmfrHWYrrZIsK+CDoGlZH0Yrf1u8Q3pMCdWBHNIrU4zBIfOizbHXeaRNvpm
         flDxSbrryjI/kk5w77sqWKTnfC5xWU+RMleNTc4WQp1FG9RILymsbMIQ9qbT7BSGETFP
         Yb9U5x1XnMrjwe+600kTTYCED0SqT82YLWO5txvLC9Hoy5cEAOuSNlRf60p71PN2WFtb
         ud1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793657091; x=1794261891;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3teTHgI6eBV8JhAHU1p2Vd46MVJYm6aXsAh7Xpa5ptw=;
        b=qYYKiUCjGE7mKK4Chi0Eky+y+n3y3839yAkIExANPR6/XH2pAsRJrLHN9sPmcOSsBN
         TJnevtUS7vdR83m4/p7bh1bh208dms1UYRi1s88HodnPK78P+Iko/TiIdSyMyoMskRjD
         YjMWKYaPIkuBwITAjUEL0o1EAQM1KWeRL4aC1enfXh0rgxQIJMVu0i52by1IPF7KL5XQ
         aNwQtLXyMfXzn4JIjIpwFpaFOpE4eQI5Z/JNV7SxdcdjeY43VwiakPBDlirCPJH2l6F6
         egSmyl7sUq2d3S7edXZxpeKkyVxTe6CeVfnNNMGK+nIc9lkr2Jc1N+TA9fD+pGUEq1Y9
         Zrrg==
X-Forwarded-Encrypted: i=1; AKwUvByyz1YU+ntY/LV1pRTTrOU2aVEu/Piva4x/lwJ9NzAETiWkhCiWCJNJBATPx1gLWmON84O+jjIQlIg=@lists.infradead.org
X-Gm-Message-State: APuU4Z/jIRkJi38BgIpkjtNLh9gVa28EqQ8sJpCoZOoSEgn+lMlpfw+G
	xvaS1Bm1RqhD9ws7STYRS5BwlCa1B3EvF3whN6XbKF8rWSA/sh6jp3g9
X-Gm-Gg: AYBFou3g9dF/ZW/CXJR5mB8RrvRMx+Er6lQa5Mm8ayEMy29URKRDRpeaCRzuY7OKhpr
	QsqCeTh7ixEr+r1LYTDKkGMc+sFbqc14i1OgaI+y/ZRVzyp27Wz1eXZ0f3jxcfq/A67Ma5QV44J
	8obJmVYx6TDkyGMP6CNA/4hmiGpVYB/IXVHGFox48AmjenmhiQVoIPnpLODk3iteda3CdgEaUPR
	FY0EobP3Q0jr0ey3HoXS5ajgBLayUEm9ym99xulBxDM5Y29XLtLuqHsGphJf304lLDqyXrqEFn9
	DBSl/O4H2E8fyEfyn2gMgwI/BZsYjINpkzQZThhWTqfHl+LQRris+nvlz2kedAnUN+i9S4RSOjK
	5VhH1otecwSKX+ZalICchPULFTIgxVhMosZAVJaTeADWy6KvKhveN5vzjugASdb8pX+gl15I/wK
	9l/2krKxv9KNRgB7ghHW/pbbEEr1LgUiP4OIY+gDMdEd0iX3ESgjvzYC3rC9WBW/KZReVG+KGQS
	7UjNL2IBdrGIfYia6WNchS7cdO3uDn3XHvMgNbaiNfEMlVxAUq8rf9OhaCg+kyQzyAV/bQCnqR2
	kDu0lVzIXR3a+CLgEW/oxxCGjgsexrVIwI6fLJ6L1s8G
X-Received: by 2002:a05:693c:20c9:20b0:351:245b:d1e7 with SMTP id 5a478bee46e88-36a42061e10mr15018801eec.0.1793657090744;
        Mon, 02 Nov 2026 14:04:50 -0800 (PST)
Received: from DESKTOP-NM9EKIA ([125.134.240.130])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a429467cdsm38466358eec.19.2026.11.02.14.04.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 14:04:50 -0800 (PST)
From: Joonhoe Kim <26rote@gmail.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	vkoul@kernel.org
Cc: neil.armstrong@linaro.org,
	mani@kernel.org,
	dmitry.baryshkov@oss.qualcomm.com,
	val@packett.cool,
	wesley.cheng@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: qcom: qmp-combo: Leave the USB PCS alone in DP-only mode
Date: Tue,  3 Nov 2026 07:04:50 +0900
Message-ID: <20261102220450.1670-1-26rote@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.5
In-Reply-To: <4d831e77-2123-46eb-90ed-dca3c580d47e@oss.qualcomm.com>
References: <20261023123512.1912-1-26rote@gmail.com> <4d831e77-2123-46eb-90ed-dca3c580d47e@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_140452_369010_A2A318C4 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/2/26 10:32 PM, Konrad Dybcio wrote:
> On 10/23/26 2:35 PM, Joonhoe Kim wrote:
[...]
>> -	ret = qmp_combo_usb_power_on(phy);
>> -	if (ret) {
>> -		qmp_combo_com_exit(qmp, false);
>> -		return ret;
>> +	if (qmp->qmpphy_mode != QMPPHY_MODE_DP_ONLY) {
>> +		ret = qmp_combo_usb_power_on(phy);
[...]
> The USB sub-block provides the PIPE clock to the DWC3 controller.
> If we somehow enter DP altmode before DWC3 gets to probe, or if for
> any reason we need to access that controller (maybe debugfs reads),
> I think this will fail.

Right, there is no PIPE clock then. But there is none without this
patch either.

In DP-only mode, qmp_combo_usb_power_on() writes the USB tables over
the lanes DP is using. Here it timed out waiting for PHYSTATUS when
resuming in that mode, so phy_init() fails.

DP-only mode is usually entered after DWC3 has probed. The mux then
powers the USB PCS down under the running controller. So accessing the
controller in that state already has no PIPE clock today.

With this patch, the probe-after-DP case ends up in the same state
instead of failing in phy_init().

The missing PIPE clock does break things on Kaanapali: starting the
host in DP-only mode fails ("Host halt failed, -110"). I've sent a
dwc3-qcom series for this [1]. It switches the controller to the UTMI
clock in DP-only modes, like "qcom,select-utmi-as-pipe-clk" does
statically. It also makes the controller a mode switch, so
pmic_glink_altmode cannot set the mux before dwc3-qcom has probed.

[1] https://lore.kernel.org/all/20261102215121.738-1-26rote@gmail.com/

Thanks,
Joonhoe Kim

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
