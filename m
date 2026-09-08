Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD51AC79F9E
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 14:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmOq46jsIssqIh1yXrQr4fCmYvPA3mcTr3cEzDeQQnY=; b=bHxJU44WHETDQL
	lNOJlETv7VURLTmBy8AVzphgxxdqk3rJmoI9gLoU4/27ukrTT28HyiGxFPqnRFhLJTWSUDlquYQZ8
	fqPG9SUkwGU5aICiaQ2/RpbaT+ZDiqRB2GzaKCaLyp1toXlwBCSkxKfOt+Rh8cedIJxchG/4fsCum
	Nh7/k8X46vWavNi1Z5frF7j5Gzbcy5og8ji3DzTIxu5CAJ10Hh+mNWB7n2hyYAtn+bR9B4HyzJLbH
	0VCBP9/NBtqnGb6mXZ6OF7EP/YTPN3AbY2qQ5Q7CvDJ8bqaYNBSOopdJmh3VD/UT5iivmXLjEOuf9
	7F5iv7osWk7WD2vkzdrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3x2Z-00000009J7c-1Sdt;
	Tue, 08 Sep 2026 14:43:15 +0000
Received: from mail-wm2-f12.google.com ([74.125.225.140])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3x2W-00000009J6k-34nJ
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 14:43:13 +0000
Received: by mail-wm2-f12.google.com with SMTP id 5b1f17b1804b1-49b4ba7fe26so1800605e9.2
        for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 07:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788878591; x=1789483391; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KDuIAOmD9TOy7wbeKmvOrBhyXGkPda+5cVc0xJOwDR0=;
        b=RMrMLbOBPO1IPTYo9G/rplCt9bdeCXeq/lu/k1cmA44mo/ToxfJYcfNrMFFlKppI0p
         ADV1O3wXlN8f84WKUxNKF3UQL8Z6hGjIhp4ZBuHjeHumntVH0dRZ2e8eAxVidufwCc2G
         7fohtvYLHx55iEModmHAtEcWJREMglHN3ge6hySwCTEk+OYQXeDeBOlVAQi6BqmAynH7
         Fe2V5jLiS40Lr3njPvBh7jssbune5fo0TpvsXyvWStdmkl4PqSNOWY/e/dlP5qXPWaMm
         /zZIaKtY3EbIxF2Pfr2OlQW79tAwQp0u9M6MW0HlBt5HmKS1TVSB4bHst8/NIRnwb56k
         6eBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788878591; x=1789483391;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=KDuIAOmD9TOy7wbeKmvOrBhyXGkPda+5cVc0xJOwDR0=;
        b=O+RfPwAh3fEEC4pnjWvoZarAEbFcB5H9iXzLtabHEDqA/WbcqmDFXAciXvlzlZeNbz
         toqyMUlKA2LiEGdCGPwZBgZMkPp7sW7JhuLLVYBatT8Jqzxs2SaXniLbse2eF99KmEqf
         oR5Ddh2QEUK4xHO5UEwBb3GpMpUS3uSrt/SWhaqpi8TT7HG1hDT2O4HlXxzrDwKEa2IZ
         wtbTEM5BhF0zKwsuMY6PoTH/z+nRNE8WrNbvg4U0UTfBy4cW98uDTNs897FkpGGLOo+Q
         iyT/UNnvBgd9S5/v6w6s1Dkxc40Mi9E+dsb0/GwRVvzWIuyymUU7qoQgBeaUllpnJtU1
         vRWg==
X-Forwarded-Encrypted: i=1; AKwUvBw9TelMx1B6mBGPtaIfNqKTDshYLly10MIS9SEpMP73DYMdecQqavh/7ghAq6dCzGUPQlcg/K9Pe8w=@lists.infradead.org
X-Gm-Message-State: AFuF++nKKW0fpsIBSHSQDMKTWOwIfBVITcmCMACoG6ZkgsN0NG+Ow2dp
	zowS6D61ohewwqQTUU8CLXLK8yANy7n+AZu2/wnJkXVC2PoXkAEcCUJm
X-Gm-Gg: AYBFou2BEKdDzqw7/AcapKmRjUFtV0J7pd4k6EU86z7uc96tQaq+nGZ5dvVDRSrLCwp
	CTv97mR13ybKgoZUUG/kLepEziQzb4ISnsGPyPFcsQxH/xPqeHZr9HwcXDCNZFx8LithE6zJn76
	WD1ImEF5fdgppFuVwDgaZxcJnzwWhrizXOaiAFiCOdi52MxZG2vq0NRgkzdnh8lCDC098M5xgPJ
	G3S5dfRk5GBo0J5g2Yoc5sgVdTlDvolc05TeiHn20jpezYcCVFAzPYV1tA5snf6+HD2Si6MDcEU
	1id0KqgY4+kgeuBNi3yZ9ih21doVDVzfbTZIbUliJmGzJOclgDhJyDL/z/z7wor/RAumHNZHnzA
	61Y2bQsYJlVYmplY9WD8Z+k2JKiPwOyl7zSSmzU9SDvaDo5mM4/ORQy4ZsnF0WBjoMdvyeUyocb
	GM+B0iLmPuq0t6UGB4At7btIHRKc045FJAFJ9SgAG3LpOmfQJyWCWwWCUYOqCAZYWLRO6MgDZ5W
	p0M2n+vQQYlbN5uzdBtnuWxs1W6BC1abNyd25DsHVipXKoC0nRDHBH7xUH5ArWAtbYiAw==
X-Received: by 2002:a05:600c:4f48:b0:49d:798:67a4 with SMTP id 5b1f17b1804b1-49d079867f5mr193440325e9.0.1788878590675;
        Tue, 08 Sep 2026 07:43:10 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B825D00A0B3828666A65C4F.dsl.pool.telekom.hu. [2001:4c4e:1b82:5d00:a0b3:8286:66a6:5c4f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cee7fec25sm564356455e9.13.2026.09.08.07.43.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 07:43:10 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vinod Koul <vkoul@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: s2idle resume hangs in ohci/ehci on RK3588: HC registers touched before the USB2 PHY is powered back on
Date: Tue,  8 Sep 2026 16:42:44 +0200
Message-ID: <20260908144245.10700-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260908133147.8291-1-royalnet026@gmail.com>
References: <20260907190000.s2idle-usb2-resume-royalnet026@gmail.com> <ap__5zeUakMSLWOQ@venus> <20260908133147.8291-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_074312_787200_CC68AD3E 
X-CRM114-Status: GOOD (  21.13  )
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

Hello Sebastian,

I tested 53014abc on the Orange Pi 5 Plus and it fixes the hang here.

Setup: same kernel (7.3.0-rc1 based), same dts, same procedure as the
report, all four USB 2.0 hosts bound, RTC alarm as the wakeup source.
The only change is that commit in phy-rockchip-inno-usb2.

Result: 4 full s2idle cycles, all of them resumed. The controller that
used to hang, fc840000 (the OHCI on u2phy2, the port with nothing
plugged in whose 480 MHz clock had it as its only user), went from
"enters ohci_platform_resume and never returns" to:

  ohci-platform fc840000.usb: PM: ohci_platform_resume returned 0 after 20649 usecs
  ohci-platform fc840000.usb: PM: ohci_platform_resume returned 0 after 20773 usecs
  ...

8 out of 8 resume passes in that boot returned 0 (4 real s2idle cycles
plus the pm_test device/platform phases), each around 20.7 ms, and the
same for fc8c0000. For comparison, before the patch the all-bound
configuration hung every single time and needed a cold reset, while the
control with the four hosts unbound completed 4 out of 4.

Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus (RK3588)

Two things about how the module was built, so the tag is not read as
more than it is. The kernel was built with aarch64-linux-gnu-gcc 13.3.0
and I built the module with gcc 15.2.0 on the board itself, against the
installed linux-headers package (that package is arm64, so its host
tools cannot run on my x86 build machine). vermagic and the modversions
CRCs match, and as a control I first rebuilt the unmodified file from
the same commit and got exactly the srcversion of the stock module, so
the difference in the tested module comes from your patch and nothing
else. The module is also unsigned, since the headers package has no
private key, so the kernel is tainted O and E.

Two log entries I do not think are related, mentioned so you know I read
the whole log rather than only the part I was looking for. On one resume
there is an rcu_preempt stall report, but RCU marks the CPUs
"(false positive?)", the NMI is answered, and the backtraces show them in
cpuidle_enter_s2idle, i.e. asleep where they should be - the opposite of
the original failure, where the CPUs did not answer the NMI at all. And
on one of the three resumes there is a WARNING in
drm_crtc_wait_one_vblank ("vblank wait timed out on crtc 0"). It is
display side, and it happened on one resume only rather than on all of
them; one of the monitors on this board goes into its own power saving
after a while, which would leave the CRTC with no vblank to wait for
while keeping HPD asserted, so nothing about it appears in the log. I
cannot prove that from the log either way, but it is not the USB path.

Also, the network check right after resume fails for about a second
before r8169 reports "Link is Up - 2.5Gbps/Full"; that is my script
asking too early, not a regression.

Happy to re-run this on the version you post this week, and to test the
PCIe suspend series on this board as well if that is useful - it has
NVMe, two r8169 NICs and an rtw89 card on PCIe.

Igor

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
