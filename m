Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DA05CD4F54
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 00:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oHOV1taPgMtVFnESnVbbnLP990DldRtgEEAyZgTkDM8=; b=nRNFeoff2ePj8t
	GyrGI8mQmHMfIog3fU/ngwXibcbEp86/yH5bIXk6cKsJhwCkSkqvoIgG+gI5JVgL2YjvitTKYtiqX
	hAvxpPFfMAtD39LwA2ZvP1Zwq87a4QDOMYFGUZUQk8zHzBFC8UyBFHD2HU7o+uExHtVaeLAsY9KkK
	mP+uOYZdqjH8QaRTia4OhJ5jAbCXmTSnLw88MNjZlWnVjyyW70NM/49dX6vl/HYZgZxtY9Xt2bnkE
	XQxTJKDScq6sPPN0wa4YGbulvGs0Ypo85TkyK6DgT2ZvI9j2YzeZns2GhL4IXmovkMiBzUie7XYVf
	6DgLrwHXT7WHRGxCB+FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrPX-00000006Hwj-0RgO;
	Thu, 21 May 2026 00:37:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrPU-00000006Hw7-0NB0
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 00:37:13 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64KFjZ1E4115406
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 00:37:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=N5+3xR0mUUwO8PD3e537dZ
	4FKHW/cDZ0dA7B6EMde9s=; b=aMLy8IUg/8i8V5HuAK4txe+hHTC79W0uOX5IOW
	isxbcAq5p1ChBPk60KjFGXc2l5gyB4Lconzy43+/2NAZ0HNFx+dzzKWDaG17HbtG
	qYrPIPwsd7iXZ36hHtUGwGSlhDxF+KbD+eFGmoiDsx+dXvceacVlMnqxtcrYniiM
	uSME+sEhvA/HybArDAU9Ct8zis8tO96Uvy0ZLKhsVbRPcK/Goet/xaAOwAW9wSk2
	Tts+W2PqxSKYWQPkZ3beJlcNRk+P5ZMWNc23B5nAJZ1c0/uga+nzib7dvDEtdXbF
	HFcryPAzcZcJ6FS0QeNdwd8p4P0qAV+IpegMNCeS47Eeabig==
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com [209.85.128.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e99w0kdt7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 00:37:09 +0000 (GMT)
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-7bf1433b750so87945017b3.1
        for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 17:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779323829; x=1779928629; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N5+3xR0mUUwO8PD3e537dZ4FKHW/cDZ0dA7B6EMde9s=;
        b=Ih+shTGzKQrOPPy7V/sIrW1UqjS0vS3oYxqxrH6h3h0CLs3oOQK8DoZEeBhLEBDm1h
         FA6Xd6DiIQI9Mpq9wkOp2KHV0rSsgxjWSUgX51u9RbZz+afNvakdE0Pcy+OzrguRehb7
         H4c75I7sX8IwGuB+w6GIwFeLcGZCN75uZbYQjtRHIg7FNLJbFqrE87p4YWon0dq5UMVz
         vc7zKlBzCOr978ajeTLyrJJxfeec+iOmQAQ3i//5CsfqK6BmTG32A5PCp0IlFKekUrzB
         q8C3Y0Vsp9R+41WVPG0YRhwupNSyAwbKD5YcuAQjywySe+IQAutrtY8iXG7hS6XB4j+r
         cXjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779323829; x=1779928629;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N5+3xR0mUUwO8PD3e537dZ4FKHW/cDZ0dA7B6EMde9s=;
        b=WZY09kNDkXaDKkXTFfzjAcddbacw2c4xo1poTuvMUucVgGZHfJG4gl786338KwfbbS
         wFwx1kfLFrDoxmWVC4wrWEX5PQA/ZaTHQxjDf1S0Jz5vkibse2Uhkgtrw7/ZCKsGff0d
         Gu0spAsPJO4bxJqLnzCx9tafOSY0oh5gtlnC8uHaV44UIXz2QHvzuDMVdPz2dC5xFMqZ
         LOEWpU7YuEFEUB++0FMZHG34wgYKSbfczMOBVbEE1NxxLWmj7gasAulVzJmJ8Hxud9zP
         o7jHRs35eRgVcWsDv+qcWH3zctSqgekmH4nIE3Hjj8duncHMlDDqzx91KSarQaDRqU3p
         IXIw==
X-Forwarded-Encrypted: i=1; AFNElJ8zFjb0khhgHRTYKS5cg8BDY0HwrInhrZ6P35roVPrwUS55nkfz/O2fprPGPs64s/IWro99HPcy4IQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YykVSyUVAljEpsksSTz+IqmI3W6VdKK9qShlhv53RixPKomx0+0
	zo/EZPdUvezWNyikmYZBhWz4Owzz3GY+fWux8G8eB5qVKrDs2HpiXejabO9e4FAofu07f87mqJe
	2fVXp12ks0b5zctg4JahwXJC3AH+UJFT4so8iyKkNH3rYeW0X2j9RrmYSV5gIo2GXYXdw
X-Gm-Gg: Acq92OEoOWvjWz9zstG6RU1Pqf0XJm5HmCnjuar5z5lAr4Fyggd/Bi59A6a+krfJuxF
	aX8tKMvdWr+lUu0TcJq9cQFv18u+AFh4PxLTp8EZ4m5FxdR3F7t2wX3DyShQqX/5ugiAvlD/Uec
	PPtNiQdGWnbx53FG/tZ+UUp/gu326CSRFxNAK7GrAreYc26oiO3zvdRdDXR/cMteoFIci3D5hhn
	wdQ55nzHOWIj+Q8wltXCOhRYGggV8IbXoCq1ZbgI8Naf6FY8UjgR+CuWXzWBT/g4V7ZB5J7ZkwS
	zlKlg8cIRXOpZuDQnYkz+B1S2DJAbEfRk0o1cf1ziUtUxoRQn/AS0f18mYGIGvQvnK3ELU2UB6L
	X8P4aaBvjNOXsbxMOeL4pXhLP9yWUPaCZ7U7Uv18ctjQQQ9OeEC4Z8z77teVsTuN8QU10EF8ktT
	EXY61RZB+s/k20fK4=
X-Received: by 2002:a05:690c:e3ee:b0:7d1:dd7b:b71f with SMTP id 00721157ae682-7d20c944571mr8724657b3.29.1779323829395;
        Wed, 20 May 2026 17:37:09 -0700 (PDT)
X-Received: by 2002:a05:690c:e3ee:b0:7d1:dd7b:b71f with SMTP id 00721157ae682-7d20c944571mr8724297b3.29.1779323828982;
        Wed, 20 May 2026 17:37:08 -0700 (PDT)
Received: from scottml-Latitude-7455 (107-198-5-8.lightspeed.irvnca.sbcglobal.net. [107.198.5.8])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7cc991c98d9sm60545717b3.10.2026.05.20.17.37.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 17:37:07 -0700 (PDT)
From: Michael Scott <mike.scott@oss.qualcomm.com>
To: linux-arm-msm@vger.kernel.org
Cc: vkoul@kernel.org, neil.armstrong@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
        abelvesa@kernel.org, faisal.hassan@oss.qualcomm.com,
        linux-phy@lists.infradead.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org, val@packett.cool,
        bryan.odonoghue@linaro.org, laurentiu.tudor1@dell.com,
        alex.vinarskis@gmail.com, linux-kernel@vger.kernel.org,
        Michael Scott <mike.scott@oss.qualcomm.com>
Subject: [PATCH 0/4] phy: qcom: qmp-combo fixes + x1-dell-thena DT maintenance
Date: Wed, 20 May 2026 17:36:11 -0700
Message-ID: <20260521003615.1260844-1-mike.scott@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: sn13hTY2y1gOdPGCr0kfJ7WBPyUC6C3N
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDAwMyBTYWx0ZWRfX+vgInrWojUDW
 wmHFdogmA4CCojH7QMtIWfv/T0OAtl2XdVleO7q23XEwUYclnfEIplmYhcjv3UqTNwaSg3BvGdy
 wujuZokSHz1Wz59SS/6gwjBSaoB9i3UaQz7WQauTxHtWKUG6rkUPS62mchyVYsr9o0CFcs4ldmJ
 CIpejAvQ8JkOzh3Bp9zqNijkadDHBgAulndO6QNd1kOEsn5N303PnDAph1Ay8rK/2VcJiKS4JfU
 0KgYzvYuUX5vYLfRD8VElUj11HXp2+x7Q/Jrof+HWH1ZhE/WuSA2yrU8wxHr90cVV+MVIsTbU/S
 OrC0we69M3zlINpRq+tpcn8sUSmf3JM8P7Igkuhm7ZTX/tVDCv2jNE8tvSaLwhDxvF2qMjMNrkA
 HTiw4DQlI0pV8IpVj0xk5011sBzZv9fzCnYWylIBnH9uT4doX57Z18hjVgRtBYqjNrA5u8PWt/1
 y+zPuygBwZG534LV9bw==
X-Authority-Analysis: v=2.4 cv=RZigzVtv c=1 sm=1 tr=0 ts=6a0e53b5 cx=c_pps
 a=0mLRTIufkjop4KoA/9S1MA==:117 a=cdagev08qavQYXHyx3V8vg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=SOupQL3pC_S58mEsAAwA:9 a=QEXdDO2ut3YA:10 a=WgItmB6HBUc_1uVUp3mg:22
X-Proofpoint-GUID: sn13hTY2y1gOdPGCr0kfJ7WBPyUC6C3N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0 clxscore=1011
 priorityscore=1501 malwarescore=0 impostorscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605210003
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_173712_249768_57AA1037 
X-CRM114-Status: GOOD (  21.47  )
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

Four patches:

  * Two pre-existing bug fixes in phy-qcom-qmp-combo that are reachable
    today on any board which registers a usb_role_switch on this PHY,
    and will become reachable on more X1E boards as their Type-C
    support matures (patches 1-2).

  * Two dell-thena DT maintenance items: one mirrors a regulator
    always-on change Hovold applied to the rest of the X1E80100
    family but that dell-thena missed, and one bumps the linux,cma
    reserved-memory pool so the camera pipeline can actually
    allocate buffers alongside a normal desktop (patches 3-4).

== phy-qcom-qmp-combo fixes (patches 1-2) ==

Both bugs were found by exercising the typec_mux + role-switch code
paths on Dell Latitude 7455 (X1E80100, dell-thena). In mainline
today the bugs are reachable on x1e001de-devkit, which registers a
usb_role_switch on one USB-C port; they would also fire on any
future board that opts into the same DT pattern.

Patch 1: qmp_combo_usb_power_off() / qmp_combo_usb_exit() can be
re-entered as ->exit from an external consumer (dwc3 phy_exit during
driver unbind) after this device's backing devm resources have
already been released along a separate teardown chain. The
dereference of qmp->pcs (whose ioremap has been freed) then oopses
with a level-3 translation fault. The patch adds a usb_init_count
guard so the re-entry is a no-op. The proper long-term fix is a
teardown-ordering rework so the QMP PHY outlives any consumer that
may still call its phy_ops; until then, this guard prevents the
oops.

Patch 2: qmp_combo_typec_mux_set() updates the cached qmpphy_mode
unconditionally, but only reprograms hardware when init_count is
non-zero. So a typec_mux_set arriving before phy_init updates the
cache without programming hardware; subsequent calls then see a
"match" against the cached mode and bail out early, leaving the
lane mux in whatever state it powered up in. The patch tracks
separately whether the cache has been committed to hardware, so
the fast-path bail only happens when the cache truly reflects the
hardware.

== DT maintenance (patches 3-4) ==

Patch 3 marks vreg_l12b_1p2 and vreg_l15b_1p8 always-on. Hovold did
this for every other X1E80100 board in March 2025; dell-thena landed
four months later (commit e7733b42111c) and missed the change, which
leaves the kernel free to disable those LDOs even though several
board-level fixed regulators have no described vin-supply link back
to them.

Patch 4 raises linux,cma from 128 MiB to 256 MiB. The 128 MiB pool
is too small to support libcamera's buffer set in parallel with the
normal desktop: msm DRM framebuffers, qcom_iris codec buffers, and
qcom_camss VFE pre-allocations occupy ~100 MiB at GNOME idle,
leaving ~25 MiB free. libcamera's "simple" pipeline asks for four
8.35 MiB ABGR8888 frames (32 MiB total) and the fourth allocation
fails with "dma-heap allocation failure". At 256 MiB, ~150 MiB is
free at idle -- comfortable headroom.

Note for other X1E maintainers: every other X1E80100 / X1E78100 /
X1P42100 board in mainline is still on the 128 MiB default, and
several of them carry camera nodes (Dell XPS 13 9345, Medion
Sprchrgd-14, ASUS Zenbook A14, Microsoft Romulus, Microsoft Denali,
Lenovo ThinkBook 16). Those boards are likely to hit the same
allocation failure once libcamera enablement lands on them, and
should probably take a similar bump. I limited this patch to
dell-thena because I do not have the other boards on hand to
verify the resulting CmaFree numbers under a real workload --
applying the same change blindly across boards I cannot test would
just shift the guesswork.

== Patch summary ==

  1/4  phy: qcom: qmp-combo: skip USB power_off/exit after device
       teardown
  2/4  phy: qcom: qmp-combo: track whether the cached typec_mux mode
       was committed to hardware
  3/4  arm64: dts: qcom: x1-dell-thena: mark l12b and l15b always-on
  4/4  arm64: dts: qcom: x1-dell-thena: bump linux,cma to 256 MiB

== Testing ==

Hardware: Dell Latitude 7455 (X1E80100), running Ubuntu 26.04.

Test kernel: a local build of Ubuntu's 7.0.0-15-generic source with
this series applied on top. The series has additionally been verified
to apply cleanly on mainline v7.1-rc4 via `git am` with zero conflicts,
which is the base used to generate the patches in this submission.

  - Without this series:
    * Writing "none" to a manually-bound usb_role_switch reliably
      oopses the kernel. vmcore captured via kdump-tools; crash(1)
      analysis confirms qmp->pcs UAF in qmp_combo_usb_power_off,
      reached via dwc3_remove -> dwc3_phy_exit -> phy_exit ->
      qmp_combo_usb_exit.
    * Without patch 2, the first typec_mux_set arriving before
      phy_init updates the cache but not the hardware; the next
      call hits "same qmpphy mode, bail out" and the lane mux
      stays in its default configuration.
    * libcamera-mediated camera apps (gnome-snapshot, etc.) fail
      to start with "dma-heap allocation failure for frame-3".

  - With this series:
    * Role-switch teardown no longer oopses (patch 1's guard).
    * QMP PHY is reprogrammed on first altmode notification after
      phy_init (patch 2's committed-state tracking).
    * CmaFree at GNOME idle is ~150 MiB (was ~25 MiB).
    * gnome-snapshot opens with a live preview from the OV02E10
      sensor.

Patches 1-2 were exercised by manually wiring up a usb_role_switch
on dell-thena and driving the role-switch path; the DT change that
makes that wiring permanent is not part of this series.

Michael Scott (4):
  phy: qcom: qmp-combo: skip USB power_off/exit after device teardown
  phy: qcom: qmp-combo: track whether the cached typec_mux mode was
    committed to hardware
  arm64: dts: qcom: x1-dell-thena: mark l12b and l15b always-on
  arm64: dts: qcom: x1-dell-thena: bump linux,cma to 256 MiB

 arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi |  4 ++-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c   | 47 +++++++++++++++++++++++++++--
 2 files changed, 48 insertions(+), 3 deletions(-)

base-commit: aa61612ab641d7d62b0b6889f2c7c9251489f6e3

--
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
