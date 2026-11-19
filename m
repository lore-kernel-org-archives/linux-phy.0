Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4834360A2604
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 12:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gKSrxY0Y;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Xkp5P9KN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=jmHb00QsE2i77brB6vZ+alqr/rM2BRZiqUVbiW/fsIA=; b=gKSrxY0YSFxEMTZU4X0tL38Ug2
	7VqXA2hXv5uC6zcuebBZRZlpzVsIjZhilt6mtyu3xi6QTjj7tX5GWhEf5nxS5dzhCN5Wy8Fs084KS
	pY03oDPcdmhkueV9FkBEi1dgi43pxgXQ9nmAmg9ZSdPeyhbfPt4Akd5IYCsIpF7o1goXQHBF9JsHY
	RAPWPO6bSCEf0fIfKzFBsacR4NnhgrD34jlB9vatuu7FSLp/LEOOruwb0S5zbZGZBZlEfzmsnupef
	jZJgZ6f+awZMcy3KgNFS3UXb0sGpG91GYJZnXUjddkvsUrG9q6QAQ/6mbiA+3d4M6r333cPnMq8TU
	B74qRzqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU1Wi-0000000BuhI-3bwx;
	Thu, 19 Nov 2026 12:46:08 +0000
Received: from mail-dl1-x122e.google.com ([2607:f8b0:4864:20::122e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU1Wc-0000000Buf8-1nEA
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 12:46:04 +0000
Received: by mail-dl1-x122e.google.com with SMTP id a92af1059eb24-170135e43c7so3361903c88.0
        for <linux-phy@lists.infradead.org>; Thu, 19 Nov 2026 04:46:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795092361; x=1795697161; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=/vXmxDVSuxplVUUVYfnRL5cmVV8c8auAAYmf+pDAyHA=;
        b=Xkp5P9KNZnlAXkp3ZCVRX2lXYro5nwRxvoulxmuagDtQTmgXrSGP04CW7s1+/nAYq5
         wLu87rTCIqyHtDpKNyH5JOxHW3Vi/rXhWVRiubDrw242u7v2yPU/JrUrfEnE5W8A9vcc
         MB7RLd1XWHBuWLYA1Y+IPBDTDQHf3g7xcLrrgnV3EYU/uS0LsNlS+TtJQa8nGaxp3tQe
         saIAfuLtaqCGY9aq6AcTfYw4eV1kMm8Jqvur4WjCd6GVC10pdck7u4W6puUMwomf+tzd
         dfKEgfYRUEe9pMNRIfb2NIUbsVKOHO7KWgzC139A8eCdFuWN7V9vMR3nBRzpS8qFbEL1
         mimQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795092361; x=1795697161;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/vXmxDVSuxplVUUVYfnRL5cmVV8c8auAAYmf+pDAyHA=;
        b=pzGGzOUKTdFQgxH4T3kEWweLEyAPwzEEd7svKrYxnDiAqM4bsTc3tQ7hWSyOkh5M+7
         w9wsydMhUe25MX68vGBAfXycAfNs8wpUMHES0i2Dc+lKLAuZmyWadw0vZiPSSbmEt6ay
         0U87/VCM1lKvERTEJ9s5I7hNSz4eWQQhxaIj7MLHrlgbn3Tl3q6Q7BzcV7lxLpCUKpba
         2Lc5iyCOmpC8v0i6YLRhu4cvPaPwF2MSBjFh71X+zP3nDjTaONoLZwpuoqepjizsBRov
         nTHLWHC8jeCu1jiPXULGAUUAGqSEandl0hKvbPHcTuTuMOpNz3U8QTqficzQg+hLQr+H
         CcGg==
X-Forwarded-Encrypted: i=1; AL+hErHYGQqV8bBGpHTSOftADr97yHHNHg1UE6KrWS2vr7fAsFkVLfK89RIczvvV4sOlco/a6MKFR6D7/yM=@lists.infradead.org
X-Gm-Message-State: APuU4Z9BCINDGdVH3tQZlrFqR0RWQLeOBsTCj0uEAypJ9lcncWvEAcrm
	Gcad8iAVl4ivRctu5NuLOKmMKO+ApnCzAJa1bYfMMMStZaj9yyYCo5Nv
X-Gm-Gg: AYBFou2w0CohUyH3lbaQFQ+JOBk0u89dofdGMBzR6fenQQdK1ZU5fEh9xJChqiVWGyO
	tb9tWJwgFlqqNG4MVeiVJZS1fsVLXG94dBpUFkiKkbQRWlXaO/XG0JsaKTfLI6ZNhNFcdN/lHA6
	KuFR7TprYTNovJf54rct71oGqPCnfuvKSoJP7mHcWlDFU3imLHYD1bs0lTmQ5WDUmNOhOJtJjQJ
	TwVBJJgSMm2cFLChpQbcl1Ixkc2O3a8yH1rnSpM5wNJF2fUvtki6046NsJT66bs83tgner2W3/I
	+9lCXXD71u/3MWgxvBd9lb4OtI3CsD2W0w9pDfWxUUe73q0uw/iTH0Uj5juzc4Gv/N48fdK6WhE
	rQdN3mz4AFbL/gOpBBHxiaxsDgrUALYTMp+JdHEgmOuXu8NupNNdxgw4qomFJDmISnvIoXgaCrh
	T+bTlVYxhIwakbZkb3V7jhSYg2vdsp9vMzUSVD/QQ7LPW0UP3PT4JtfhMWJMpBHX2/em7mQB62y
	CaZJSbPqENN+HgBagHCs4uCkdASzrSbSye9dHtRubjZrHIjxEdlrj+WDKCNRWp7BfMkEIRSpqVG
	+YhHzXmHJn1mZhGq/CMGOTg0h9M7zk+ot+4=
X-Received: by 2002:a05:701b:21cd:b0:1b2:5f31:21c9 with SMTP id a92af1059eb24-1b543b19674mr4990798c88.6.1795092360904;
        Thu, 19 Nov 2026 04:46:00 -0800 (PST)
Received: from DESKTOP-NM9EKIA ([2001:e60:8509:ba6c:11e:f696:8454:757])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b5447da7e0sm22350329c88.9.2026.11.19.04.45.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2026 04:46:00 -0800 (PST)
From: Joonhoe Kim <26rote@gmail.com>
To: gregkh@linuxfoundation.org,
	Thinh.Nguyen@synopsys.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: andersson@kernel.org,
	konradybcio@kernel.org,
	heikki.krogerus@linux.intel.com,
	abel.vesa@oss.qualcomm.com,
	abelvesa@kernel.org,
	wesley.cheng@oss.qualcomm.com,
	krishna.kurapati@oss.qualcomm.com,
	konrad.dybcio@oss.qualcomm.com,
	dmitry.baryshkov@oss.qualcomm.com,
	neil.armstrong@linaro.org,
	val@packett.cool,
	balaji.kalkonda@oss.qualcomm.com,
	tvlad744@gmail.com,
	effeffe99@gmail.com,
	prashanth.k@oss.qualcomm.com,
	yongxing.mou@oss.qualcomm.com,
	peter.chen@oss.qualcomm.com,
	tapas.rana@oss.qualcomm.com,
	vkoul@kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/2] usb: dwc3: qcom: Keep USB 2.0 working in DisplayPort-only modes
Date: Thu, 19 Nov 2026 21:45:56 +0900
Message-ID: <20261119124558.1548-1-26rote@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.5
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_044602_471934_AF2501AD 
X-CRM114-Status: GOOD (  16.89  )
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
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

With a USB-C monitor in DisplayPort pin assignment C or E, the QMP
USB3-DP combo PHY gives all four lanes to DisplayPort and keeps its USB
PCS powered down. The USB 2.0 pair still works, and such monitors often
have a USB 2.0 hub, but the dwc3 controller still runs from the USB3
PIPE clock. On Kaanapali the next xHCI reset in this state times out
("Host halt failed, -110"). USB stays lost until the cable is replugged.
Commit f546912bcac6 ("phy: qcom: qmp-combo: Move pipe_clk on/off to
common") keeps the pipe clock branch enabled. That is not enough here.

This series registers the dwc3 glue as a Type-C mode switch next to the
PHY, so that it gets the mode (it does not route any signals). In
DP-only modes it moves the controller to the UTMI clock, as
"qcom,select-utmi-as-pipe-clk" does statically, before the PHY switches.

Peter Chen suggested on v2 that the PHY could notify the controller
instead [1]. This series uses the existing Type-C mux framework:
typec_mux_set() calls each mode switch linked from the connector in
graph order, and the controller (HS port) comes before the PHY (SS
port), so no new PHY-to-controller interface is needed. The cost is a
"mode-switch" property on each controller node. If a notification from
the PHY is preferred, the clock selection in patch 2 can be driven from
it instead.

On Kaanapali the PHY becomes a mode switch with Balaji Kalkonda's
DisplayPort series [2]. The controller side for that SoC is a DTS patch
sent separately to the Qualcomm tree [3], and Tapas Rana has sent the
same for Glymur [4]. Neither should be applied before patch 2: once the
controller node has "mode-switch", pmic_glink_altmode defers its probe
until dwc3-qcom registers the mux, which only patch 2 does.

Patch 2 is on top of Filippo Falezza's "usb: dwc3: qcom: Restore UTMI
PIPE clock on resume" [5] and reads the selected clock back from
QSCRATCH, which loses its contents in system suspend on SM7250. [5] is
still under review; patch 2 will be rebased if it changes.

Patch 2 adds "depends on TYPEC || TYPEC=n" to USB_DWC3_QCOM, so with the
arm64 defconfig (TYPEC=m) dwc3-qcom is built as a module.
pmic_glink_altmode then probes later, and a monitor attached at boot
depends on Yongxing Mou's "drm/bridge: aux-hpd-bridge: replay last HPD
status on hpd_enable" [6] to be detected.

Tested on a Lenovo Y700 Gen 5 (TB323FU, Kaanapali) with the series
backported to a v7.3-based tree that also has [2], [3] and [5], with a
USB-C monitor that has an MST hub (two displays, DisplayPort over four
lanes) and a USB 2.0 hub. On each of 5 plugs the controller switched to
the UTMI clock 1-2 ms before the PHY switched, back to the PIPE clock on
the next USB state, and the monitor's hub enumerated. After each of
three s2idle cycles with the monitor attached, both displays and the hub
came back. Plugging the monitor in during s2idle woke the tablet. The
mode arrived after the glue had resumed and was applied right away,
before the PHY switched (once with each clock selected beforehand); the
path that applies a recorded state on resume was not hit. A USB-C hub
with DisplayPort and USB 3 kept the PIPE clock, and a USB 3 stick on it
ran at SuperSpeed.

Changes in v4:
- Patch 1: add Reviewed-by from Krzysztof
- Patch 2: mutex_lock()/mutex_unlock() where nothing returns early
  (Krzysztof)
- Patch 2: leave the probe code as it was apart from the new argument
  (Krzysztof)
- Rebase on next-20261118
- Link to v3: https://lore.kernel.org/all/20261112113838.506-1-26rote@gmail.com/

[1] https://lore.kernel.org/all/avZ7-Ax-_VwcJhYG@hu-petche-lv.qualcomm.com/
[2] https://lore.kernel.org/all/20261022-kaanapali_dp-v3-0-b5ae8e6083c3@oss.qualcomm.com/
[3] https://lore.kernel.org/all/20261112113921.1143-1-26rote@gmail.com/
[4] https://lore.kernel.org/all/20261117113834.925310-1-tapas.rana@oss.qualcomm.com/
[5] https://lore.kernel.org/all/20261027-dwc3-utmi-resume-v1-1-ca9f0aa65783@gmail.com/
[6] https://lore.kernel.org/all/20260803-drm-usbdp-preboot-v1-1-2539b362be00@oss.qualcomm.com/

Joonhoe Kim (2):
  dt-bindings: usb: qcom,snps-dwc3: Add mode-switch
  usb: dwc3: qcom: Use the UTMI clock as PIPE clock in DisplayPort-only
    modes

 .../bindings/usb/qcom,snps-dwc3.yaml          |   5 +
 drivers/usb/dwc3/Kconfig                      |   1 +
 drivers/usb/dwc3/dwc3-qcom.c                  | 150 ++++++++++++++++--
 3 files changed, 143 insertions(+), 13 deletions(-)


base-commit: e8017d29067fd1310a65c3494ce1a1b492adbac6
prerequisite-patch-id: a793fca7329dac964c21459f8d7a8b003d36d84d
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
