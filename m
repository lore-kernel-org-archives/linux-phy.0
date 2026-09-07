Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A38AC79FA0
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 18:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVJOJ0AZsH83hksLTIOY/Rs205jIjpxTUQqxi+T3s0g=; b=yVsZUpPed7/DcL
	xzFvgFYOpVByT6UTqOueczX6qK7XO7KMG8Hpm1yoF6yTRvmUvnV3ledhDv+Sih/3Mmal459ccV5g3
	hyPf/YTrqko85+bYvioN7N5Jikc8Ct8QQkZ+em98leEaXwUpKczrplkjqAdM3QyT7hiWCL/jQJOij
	yxqAd5Psk0gLGMnqHwZlnHL8pYvKcq/0Idw3dEOKPu2S4HT7c9q02yz8aRDu3Iqr2LGramgXii9KQ
	PhVQFMkrXiAbSUVePNdWgdOb4seuojLA7OOSv2g8kK0IG7rJdi9iNPqlLgFtRKuPz2B3lW5QQdmSu
	psjVdl5Jo5LfmZ1sinsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3dqV-00000007Ypp-3ZkG;
	Mon, 07 Sep 2026 18:13:31 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3dqS-00000007Yp2-0Emv
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 18:13:29 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id 6a1803df08f44-90e9ad1a373so51160276d6.0
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 11:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788804806; x=1789409606; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qE1cFGUPU2WBN+CugW9PSSVbaWhX+WvGyXn9/fVdNR0=;
        b=FTRFXSVbK0FRVUzFEhBdyVrdt5W4hfjLSZHPcbBxlH8fpdFNGueVhj3UQvK6pwUpkL
         U7U38kSDK7sBJ0A5KadPZ/MNSYrqtBvTFpOTWtjcOXYU4Fp1Fl2YuH/znOtQuWfWit9J
         n4ySjPXNfoopZdVhSW1edigj6PAevXPLHtTICagB1AIKsSdUVQB33xBRhGFhJA0/6Sc7
         2CJTq9BFowLZ7gUpgC0VPzpxnu5KEh9ELIys/+5y75bV+Q91w0hSlZvYXizuGJ0Ohy0f
         Mm5OWBXnytimQr8hIlIQRPEOtFA5Nl3reGFbfLxISyiRz1cfNhYOReC3dPnj3JPDqgja
         uE0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788804806; x=1789409606;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=qE1cFGUPU2WBN+CugW9PSSVbaWhX+WvGyXn9/fVdNR0=;
        b=hQo8934c5w+WkpARLbsYHa534z/dzoRCKcOAYQUR5lN7k8X0lk8N0i+UgFjAfXBwBY
         ejQyEpNwBFZxgzt0bQhA/v+1w+2Y5AWSn11kdnFfPMnSIVAM/CtsfiU4bJJWG5r8oVWh
         eH0ZSCSKPrvkE7K+kDULT21swe3TwpAGo4IxTv0s/JODSmQXBr2Pbo5tIEwJi3V64QNJ
         hwWBMoAJZnn2aMq8YRrKME2J0RCNLab8mjcJham/IEgQfccsokmdUA4vHsa1nbJvWNFj
         WAccLijBm5/NhphXTM1hTBVCDwoG/fESxz1NfNyYNuBE/OXB+XJX8idVY9xt9NOZQ+qJ
         QdLg==
X-Forwarded-Encrypted: i=1; AKwUvBx4dbSdP8P6NhBL1Xp0xpPJyqm71ugdKoB4NjnFRisSotRJcIJgUCZenNNTuGObMzjk88g5r6lrCzE=@lists.infradead.org
X-Gm-Message-State: AFuF++klbM7acuD9BwBpaZsniihCdF1xlyHBcayY9Hp0SqVMRZW6zEil
	J2ZK0B+U/mIxw9BOTJJeCFaj1s7wYKYsXJ5HkIc8sn1d4g9pruL6oG9T
X-Gm-Gg: AYBFou3mgO28bNmCZzkDLDHkJiH7TGvBE+Vfvj0K7jMPwDn7XxXHWcSPJTn0w+PBme9
	aO3r5/GMmK3jqydEW1DTRgxfqIxBPokkumPKbMqCslxI78msgbRjFCds0AP1yiSzViihOfCGBWu
	PvRO5dOnOkIY0p/PUN2VQcCM8DCQFlGFlY7i22+pqWUPLrW0hXz7ABQNllVRZUEGvE/0kARCSoQ
	4T/+K5r/ho1MW6hJDDhRoopHqGO+r9q9Q4e1Bv5gTWMqc8tRzG10auGbF3A9hWwrgvGwTzYR+gd
	bZsPCTKjLoO0Bur+VBSLwBt/kElEa3L+pDNUgP2lMnotnFG+Ty275bMP//ABTFYBm0wgULOjDkl
	b9uGZINg9j+Xm29xYnD9MTHkVNHq2zFQC8YPwF0Cj2LFJlPTkfiZVIh6rK0kzd26UnrCZV2zggt
	44DkQqxcfeSmDdsFn49V2Zp2KX12CEff4ESR8zHSRIo+ZHuvyOu/9otRjc4SLmIqWCH3uInJy/0
	tKJZw==
X-Received: by 2002:a05:6214:acf:b0:910:3923:cc6b with SMTP id 6a1803df08f44-9103923d142mr240278646d6.20.1788804806567;
        Mon, 07 Sep 2026 11:13:26 -0700 (PDT)
Received: from localhost ([35.11.35.209])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-910406bbb79sm97374976d6.47.2026.09.07.11.13.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 11:13:26 -0700 (PDT)
From: BurningHoryd <sjunhyuk1@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	Vinod Koul <vkoul@kernel.org>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>
Subject: Re: SM8250 USB-C DP alt mode: DP AUX times out in reversed (CC2) cable orientation
Date: Mon,  7 Sep 2026 14:13:25 -0400
Message-ID: <20260907181325.89746-1-sjunhyuk1@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <e1971874-6e06-4ffb-8118-c4acc40144eb@linaro.org>
References: <20260906225206.2994952-1-sjunhyuk1@gmail.com> <f0fc4211-2040-4115-9847-6e5cc3fe8161@linaro.org> <20260907162643.36585-1-sjunhyuk1@gmail.com> <e1971874-6e06-4ffb-8118-c4acc40144eb@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_111328_713417_4B2ED95B 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 9/7/26 18:35, Neil Armstrong wrote:
> Yes if it's a discrete SBU mux, gpio-sbu-mux was designed for that, and
> keep the nb7vpq904m and just drop the SBU link to the redriver and replace
> it with a link to the SBU mux instead.

That fixed it. A gpio-sbu-mux node on TLMM 8 (select) / TLMM 9 (enable),
the connector's SBU graph endpoint moved from the nb7vpq904m to it, and
the nb7vpq904m's enable-gpios dropped (TLMM 9 is the mux enable, not the
redriver enable). nb7vpq904m stays as the SS retimer-switch.

Reversed orientation now brings DP up reliably - one normal plug and
three reversed re-plugs, all four train to 4 lanes and stay connected,
no more DPCD read timeout. Normal orientation is unchanged.

This board (Retroid Pocket 5) isn't upstream yet, so the fix lands
downstream for now, but thanks a lot for the quick pointer - "nb7vpq904m
alone doesn't switch SBU" was exactly the piece I was missing.

BurningHoryd

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
