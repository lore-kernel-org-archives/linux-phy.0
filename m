Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20325CD4F54
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 01:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zDUkN0Kw0yWRm/zuJK969qP7XdFJQgtLdoAcvCrJuMM=; b=nbeo13oSh1abt+
	mVtDeZBW1L23Gua2YjhCrnYhPV/mtg9kTYRgSORSW1KOremb0n4HpcDNTR2kB/QUaRzOzGI+Wf+Pu
	+jxjJTPKYQR4R4jUC0/eyWgcjZcVv6E4Lckh5Py5+yvv2FJ9ZQfdRcAty4TzisWIjma7LWX0QLRMr
	f8h3UqHdiy+XHNIhwpJxi4Tsc8RAti9S+psupWXzDCXkQ49mYqf3FNatZAIvR5Oa3eI0wscBm1D8q
	eaMNmvzAb/S/Bb+T1lk4or4szTNPiBgBw7He6DBZg/vRMoWSp3hip9wzONQ7HTlmrZTg1OaZ4hkg2
	eFPnFZNN1m3GwG4skudA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrv8-00000006LIU-1pfQ;
	Thu, 21 May 2026 01:09:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrv6-00000006LI1-0Zle
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 01:09:53 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64L0el9x748668
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 01:09:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=+OBhukk0LdM1gR7M252L3/
	fOKTfD601zCAkg1K9NP3I=; b=it5K/Wjnd+7oB475M+VhNTMERKR0ET4GvMh2zn
	4a7EBuJyd0x/DnOh4VxOKRe0AqF+jpp1RKej139TxWiHMThNa6EJj54qRpg7Uhlv
	3YGlp+MgGmgB5O1+su+xPnBnlv7N480VlwElX2RHG9uvdFn7KGrgpp+7VMWlB6pD
	7yWobhmJaooDV5fqqqnbjjRCnUmFyP/tFi3ezCBNo2+FTrx8rW8jy55bj9Zih9xn
	Xkj5DCEGzwWiC62zE9Ce/e/qSL3/AIghZWmEqDM0DTdLxO6AY8TrFDQdro1FZzhE
	6vuz+I45TpGPLqHcZyie6v5POI98Yw5dG/p8Vd+r+F2knjcA==
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com [209.85.128.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9fb6j1me-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 01:09:51 +0000 (GMT)
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-7c9e610f273so74508947b3.0
        for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 18:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779325790; x=1779930590; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+OBhukk0LdM1gR7M252L3/fOKTfD601zCAkg1K9NP3I=;
        b=STccXDNivNtFTlDx5lKEh/uaV9DY8wUzbCjbe/7A1P4MKNkt733dxP/9E3zR/j9z0G
         ZsTvAj46QDdKSN1gtoyqJYx/8sfVyi3Nq3BCDVChwa86xSAf5t5cYqdLBn5lKYNRC/+f
         3QTEYNQfZFBCZ9Yf2l9A3TzXz9sRgEPbpPbYypCde5Hp3bv+r9/Gg5SWzRyZ7APAdRVf
         n/6QDdjTT58lXc0ZL306jLlgbS8c6cchAfKq2pu7wIl3UWegMR5Abx/eueufJ6ltnqJM
         2e3yDU0YZMi6vmxPNQeW8sR3VLufmE5O/HzV9ZuQbP5J2p0HrzL2VX6p67gjodW8SuW8
         CgQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779325790; x=1779930590;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+OBhukk0LdM1gR7M252L3/fOKTfD601zCAkg1K9NP3I=;
        b=rggZX9mhGSY4chV8dcnC5VJpA9xrZwISNatwl8p+ROdph6wn1H0QOHpIi9LisLNV8e
         BnDNWKCUzaguEtU0ykxklQCOeGfo9v+gXyEGiNE3OlO0tA3gYBGlfvwHFmmzo/C6ssHf
         QrAnePWG+05+gXjtM5Tn6k/qh4zuf0mviQ5fzeVTmFPoswhn2OaLIeWJOj4Wj7W9rOY/
         9O0QWmqq3cOQfekSWoSUVlfyRRcFGC+2642yEzX74LrZniZj901pBM1ympYPFWBGjU3u
         bUnEAGD+TrGue0MoHbVL05gxuI5bLFYvXmj0IG9V8LTSvoZle/LUSNs+7k6Hoe+4nDeX
         Wf1Q==
X-Forwarded-Encrypted: i=1; AFNElJ/dKsoD7LFxYsDww95iW/SlU9K50KqsW1syu+2Eg7yE6e1lm5eFHcjMLdkU93JfqmSO3HzoAUoOzGg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyI0VJApIdnmI66EbyqSUHJRWB77gC58V7p/F8LzaiHWNZCz9CD
	7ecajKet9Xt+9dSFM6mg4b3xU/avVUq4r+h0Cv9DQSMz9K2tBWgzjfmnCy1WG78jzzzArwaEbKT
	UXjwVpP+NlEjF8mGsuJDkDsN8AbSj4IOcT2q/psfnTwlNV+bfuf7OGhtCmI0G6q9WjBJS
X-Gm-Gg: Acq92OGJ9o9oUL10WDBuAiOIV03UYYsx4Xvd/zeQrlhMifosvCAW/i00wlxtPpjBJxb
	er9JpYPf0fHweX0gt0xrovmdshlYMXLEfpX/4dqqwEGPyH9jAtlNotrNi1ZxZV3dGbEys7oMND1
	kNZsEf8H2FjtMzn2/QN56L/RYG9o6YKoAeYHU1zQDJINEoGkkpjb54yQL19JYh02tSRJiFZ3NQq
	TGYrQXWa+u0Tgf8MkNdR/v+RQaNgAFE2FmrH6RFNrFJQ6Ic3aOOt1FlehA0T/8GYZbxYt4bfmeB
	ihjdo2terY0nKLHA3TZ5Cnd0vIzX/yIpUKh9MDZ0tCCJ2rZw6Cmk4qe9sJJJOiPAwu0b+zE+r0k
	t04lIsLC0rh5Dc8OK3PNSte5Yh4milGOEQUyAH7/ZoFQ+geiImrBwuczQxCTJ6h1FztcsfuUujB
	lcT/oNFYcOFDPQxbo=
X-Received: by 2002:a05:690c:6:b0:7bf:1433:8f92 with SMTP id 00721157ae682-7d20b278cccmr7101227b3.7.1779325790518;
        Wed, 20 May 2026 18:09:50 -0700 (PDT)
X-Received: by 2002:a05:690c:6:b0:7bf:1433:8f92 with SMTP id 00721157ae682-7d20b278cccmr7101067b3.7.1779325789988;
        Wed, 20 May 2026 18:09:49 -0700 (PDT)
Received: from scottml-Latitude-7455 (107-198-5-8.lightspeed.irvnca.sbcglobal.net. [107.198.5.8])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7cc991c98d9sm60851307b3.10.2026.05.20.18.09.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 18:09:48 -0700 (PDT)
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
Subject: [PATCH v2 0/4] phy: qcom: qmp-combo fixes + x1-dell-thena DT maintenance
Date: Wed, 20 May 2026 18:09:31 -0700
Message-ID: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=do/rzVg4 c=1 sm=1 tr=0 ts=6a0e5b5f cx=c_pps
 a=72HoHk1woDtn7btP4rdmlg==:117 a=cdagev08qavQYXHyx3V8vg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=uA_aelndhFUrj06f5w0A:9 a=QEXdDO2ut3YA:10
 a=kA6IBgd4cpdPkAWqgNAz:22
X-Proofpoint-ORIG-GUID: LuCXA4WlYVE6RL0aBU2aufP_rTOPqza4
X-Proofpoint-GUID: LuCXA4WlYVE6RL0aBU2aufP_rTOPqza4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDAwOCBTYWx0ZWRfX9ZyG1wb8f2oo
 94qBwSfCisHn3Hq/ySpHGrECggzAi2597B50ULaXymEnuU7D6C7Z8wnSVE7inAFUNf8cm6rs1XR
 sbD8ca4bvER9NZYgCiQ8fmGu/kkV9YXB9Hxgxm8+sScaPVo+sDrIIheimcojkhJiykXsJe+NZsi
 /rpsWzB2vqyBwBm9w/lpgN/Ty0VXnNf3omAoAS6j3JG79R1YBk/8V7qO4mfxJNTrk+s1FO6ubiB
 o+LmI9Ue3fal6TiZGUqFlcgHUZYpp9AAp8FMd2OvPdGOPFX4nmOZAPbs20P2W+hIS0Dwm3CzwMW
 wLf6N9JRr/YdY1mU4roytwMkUtCEcyakdzer0GpG0SqVTELWjKvflqUTmRaIoVbTAt2uuyallgf
 kjEdeIMJWRGgHHxMQoNbAxwjzKUitQn9W0x6ajel8pRQmgIES5oPX5ZmGCs7P9O0YM/pLrXg4cl
 dvYZkwCsuO69pKV/SbA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 spamscore=0 malwarescore=0 phishscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605210008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_180952_196086_79073956 
X-CRM114-Status: GOOD (  25.50  )
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

== Changes since v1 ==

  * Rebased from v7.1-rc4 onto linux-next (next-20260520). v1 did not
    apply on top of commit f546912bcac6 ("phy: qcom: qmp-combo: Move
    pipe_clk on/off to common"), which landed in phy/next after
    v7.1-rc4; patch 1's hunk context is adjusted for that refactor.
    No functional change to any patch.

v1: https://lore.kernel.org/linux-arm-msm/20260521003615.1260844-1-mike.scott@oss.qualcomm.com/

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
this series applied on top. The series in this submission is rebased
onto linux-next (next-20260520) so that it applies cleanly on top of
Val Packett's recent qmp-combo refactor (commit f546912bcac6, "phy:
qcom: qmp-combo: Move pipe_clk on/off to common"), which is queued in
phy/next and reaches mainline at the next merge window.

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

A personal note: it has been a while since I last sent patches
upstream -- as you may have gathered from v1 being based on v7.1-rc4
rather than linux-next. Apologies for the extra round-trip; if I have
missed any other recent process changes, corrections are welcome.

Michael Scott (4):
  phy: qcom: qmp-combo: skip USB power_off/exit after device teardown
  phy: qcom: qmp-combo: track whether the cached typec_mux mode was
    committed to hardware
  arm64: dts: qcom: x1-dell-thena: mark l12b and l15b always-on
  arm64: dts: qcom: x1-dell-thena: bump linux,cma to 256 MiB

 arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi |  4 ++-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c   | 47 +++++++++++++++++++++++++++--
 2 files changed, 48 insertions(+), 3 deletions(-)

base-commit: 687da68900cd1a46549f7d9430c7d40346cb86a0

--
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
