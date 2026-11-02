Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612FB606D815
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 22:05:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GpVwDGqh;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ALaDtybU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zq8Rd41bK4ix8fszcckAm66Z9ExFW2Gp2TVi7GfRXXM=; b=GpVwDGqhg6r2WfnVnkAj8ANhBm
	TR+ju3xE7VBvBPiSV46SrQ6pq5/eriCu4Z3ACEFQO2M6vC914jz35emk5pKPHN6rcLwt4QTKLaR7s
	N9fqg4iExtW60qIQpgBwAdbPSj4qnPOefC7s2X5mn1TjOq3QoWqqYn0YYEk/aSe3ajtj8qnL2HmI8
	E1AFonq079aEZuruNQg4TEk1LFPQT614ejqV3JWa5QgdP2S9/ZDxlwCGpYdWeawlD9R69x0Y2jsct
	CuiXgrhciN7bkRQax9epBzCuLO+X4qFbH15JI7tMGvAuE3rx3LD1QhYe9picmGuFFrOWDSTUhIVc/
	88k016AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO09E-00000000Wi2-0P05;
	Mon, 02 Nov 2026 22:05:00 +0000
Received: from mail-dy1-x132d.google.com ([2607:f8b0:4864:20::132d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO09B-00000000Whf-2rk8
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 22:04:58 +0000
Received: by mail-dy1-x132d.google.com with SMTP id 5a478bee46e88-36a1947498bso2741307eec.1
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 14:04:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793657097; x=1794261897; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=GUWlaGlH5mz8susnJ1tc1MkzHAkxNXlsievDEYhf0Jg=;
        b=ALaDtybUU3jUXg7Eike3hPMJfOn37beB/dF37ZiYDOClsAn/XSJ5xgti0gx/+uZ6ll
         KUrEAcFqyLCTAIMkV4hHLwy/+ebC48uCdIYBVaZ5jqEzGu8csTtKXU28udA9lfEhqm/3
         rBwvKoN2wfFO5ZeGmR2E9QRoNO7tHIn3VxMNCVMRhhjLprhUXYJsCfpAaINHrPhF9auz
         tPjQcsrNSWoLYpBrymiOxjX1AUquNQBBh0CigT+bWUWskKB8BaXP2BYrmWcWDSes1YBq
         F8pQPb0FIzL6nZH99hGMi1PuWMJ8+qtdXcADpQuhJ3F5+XY1cWaG2YpAcubLMfoZfLlI
         qi7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793657097; x=1794261897;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GUWlaGlH5mz8susnJ1tc1MkzHAkxNXlsievDEYhf0Jg=;
        b=IBXI/ytnI7o5krShDXFoO6DV6ci3MCOEMqSpXPo0uB1zX0v8YxLbq3hQqY92UzAByK
         7dAbku6zpBFkxwszgX0jjW0tKMgL+iem7Vv1l0l51PXJF59Q9f+Cmi+/ATsjWLK7FDqx
         pKBXTDtSzv0zE7ihC/OlxwKfJ+lukqCo6gUeb3LlUExjP9pHre9rtywNbsO/zLPR4Lpq
         I2Ke4xC+PybBZKtVGuZAfxxu34p9NuUX2IoB6xsqD/paPR1dP6HFRqr8qMqZ+FCzkALO
         vndpUtYZ5cWayzsNaxmsobOJYzlEkzB/b/brC7EK3F/setOaPkg/1n4wiYNHF72j7ztk
         HqDw==
X-Forwarded-Encrypted: i=1; AKwUvBw5JUNbzAIYERItEFO4A+dk04XASWExENE/kRPwv7S4MOdMyIrJsfJ9ihMlh854jlZI1D/Em7+jsWA=@lists.infradead.org
X-Gm-Message-State: APuU4Z+zVd5C8PUaPKP+6FvxFvqx5Zwe1tr9I7g4armPGCbhUV6+KCws
	VA8vtro6izRSEXn9OjC1OX5DZ90GOe2XCDdkm4LGcoz4ZH52+Tohwp9R
X-Gm-Gg: AYBFou3Gt/BKwtTCd6XM6gXP/sNRDcdu9W6MEys52wbK/qA6VyWZpuf+DNHOtRCfpSl
	aytbUyPY8n0fCbKCudEjoeJmn41aUYAo4osTuvkJAdM/dMyQtCK9tClSg/pMhDTjvI455G4wbJ7
	XN/iAP590STxNIowcChR8Jarut0orehpPtwRK0unVfK9FzYvKWNFKqfHH94SUUHLhzAzan15jsB
	kFqkFS2UnV399FJKoQhaSmfPqluxxCed7mqGtbBIMtW/LVAAPAEJjT3h5X7ge75aq8O4L7lzVWg
	mOX0uSIRX5c+lM4QUPxtQfvt/Evq5Kf/dHhLapAHipPtv/bi5txQStgMI+GYFy60B3TFcgNpFdO
	KNomGQrGddA6gd4ywukFc75LuwSrhaD/62lQoRyNT2WhZwxpNq5rHXB4uU84HR92acWVjSl4tKK
	Ew9by2KCnFK6gYWBCYt1mIfGFgrWZ+p3fauw7OubJip5Hizf9U2R9dG3EJKIO3+BF9HrKCamLse
	MgfoJpHPX9WlaMpN4oSVvaIURGTx+SB+MjWPoypSuFLCZ+BwXJ0fx0LNqcL4MqV6yiJfyI08WK/
	hsQgV5FKu6m/EW2aqkRJLUniLTRTYozufU+b/YxGu8IYzWsWEcXsVMOqtGiqE4v5Kw==
X-Received: by 2002:a05:7300:a945:b0:35d:d9a9:e455 with SMTP id 5a478bee46e88-36a423b3556mr31228630eec.21.1793657096394;
        Mon, 02 Nov 2026 14:04:56 -0800 (PST)
Received: from DESKTOP-NM9EKIA ([125.134.240.130])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a428c17bdsm39334485eec.6.2026.11.02.14.04.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 14:04:55 -0800 (PST)
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
Date: Tue,  3 Nov 2026 07:04:56 +0900
Message-ID: <20261102220456.1687-1-26rote@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.5
In-Reply-To: <6cd9240d-5628-4c35-b7ca-bbbae7f62fe9@oss.qualcomm.com>
References: <20261023123512.1912-1-26rote@gmail.com> <6cd9240d-5628-4c35-b7ca-bbbae7f62fe9@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_140457_724805_0E0E87D5 
X-CRM114-Status: GOOD (  10.59  )
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

On 11/2/26 10:34 PM, Konrad Dybcio wrote:
> On 10/23/26 2:35 PM, Joonhoe Kim wrote:
[...]
>> On a Lenovo Y700 Gen 5 (TB323FU, Kaanapali) with a USB-C monitor
>> in pin assignment C, resume from s2idle fails with "phy initialization
>> timed-out", the dwc3 resume returns -110 and the following xHCI resume
>> hangs the system.
>
> This sounds like a gap in the DWC3 driver, we should bail out of r/w
> any registers if resume failed

Agreed, that is a separate problem. This patch only removes the PHY
timeout behind the -110 in this case.

I need to correct the last part, though. The hang was with an
out-of-tree dwc3 change that passes power_lost to xhci-plat. With it,
xhci_resume() went into xhci_reset() with the long timeout and
interrupts off. I haven't checked what mainline does after the failed
dwc3 resume. In v3 I'll end that paragraph with "the dwc3 resume
returns -110 and USB stops working".

Thanks,
Joonhoe Kim

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
