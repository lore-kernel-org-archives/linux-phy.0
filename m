Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F596CAC592
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 11:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iL5kxQW2N0dS6pEWeHWQpksySzOry8FNzpcJOpHuCXA=; b=KJDulKyox1W5s9
	Dbm260WENXrQUN2km8330eVvosBgV3tF01qWYu7mdDOOWclnGKTQPSUT9R+H4u9q+5jZtDGcB/9De
	Ld6ZbXk8NxNf6SfWn+QOq9j2qpOAgib9tyq5fBbCmGk39NcMtR4otT9/6nco+1k+q10L9yRV3G/TJ
	qDCHUNTM6bqLnHA2vu3kQvCkaGHqHbG9Y0/aVC6qaEk0bFXhDHNLaV476NzG1ELJNtwUYNghxjzKq
	s5YB+7vykdzURGBLsINJQmsLVFhEPH4DIY4TxDr5oyjb0CMTR5KYO3H5z4lWGRcFf5rrfnxWBYKIp
	hxoTr/xeig9JGHd9i1VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzYxZ-00000002fYz-0ePs;
	Fri, 19 Sep 2025 11:07:25 +0000
Received: from smtpbgbr1.qq.com ([54.207.19.206])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzYxV-00000002fVo-3B2M
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 11:07:23 +0000
X-QQ-mid: zesmtpip4t1758279999ta3f00b4f
X-QQ-Originating-IP: i72m7E3iBcPJtgcIq5/NRPUu1KkgvtSDgFZaLVlhGOY=
Received: from [127.0.0.1] ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 19 Sep 2025 19:06:36 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 17733966522101854755
Message-ID: <6A43111ED3D39760+a88e4a65-5da8-4d3b-b27e-fa19037462c8@radxa.com>
Date: Fri, 19 Sep 2025 19:06:36 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/3] phy: qcom: edp: Add missing ref clock to x1e80100
To: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Sibi Sankar <quic_sibis@quicinc.com>,
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org>
Content-Language: en-US
From: Xilin Wu <sophon@radxa.com>
In-Reply-To: <20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MfQnJH+7WKv6vO748leV/yMGJfZZEefnkSIwbKDu1HeDYD3Z1pbPwWxV
	I3dftWmPRmQEbKSalxrT2DUfP1TI7arqINfVggcoK2loYPTOdbOMOVww9OayYNG8n2S9hOb
	gJK5UVYES+AtNdSNpGgfu2K6/PxO5KqC6wFH6T+M8MGdhgBlo2sg6ogRW32YFiGjb8E66Ot
	02Ibr1FpIQ1Y1p9GbDLmhNCCVrXQ6cydgxt8HzgIretpoF4zTyxADMwjr7Rmcjlc4veZZAD
	PpFtx+qQ48jldRDYCo1JToqCNLYt4UsQ9v4bzb2Uz27A7+k+1uuUwEL2SP945OIxh1vqw6l
	4Nfr/V7jce/241msQloeDQIHVSjhspJssrwlUKqCKlv8UA6VE0NFiInTBHvbEkpjNyOQ83h
	P2HZMoVxLfaIkfGBmhEK/J3YqAA1Istz8GNPZdhz6uyRBaLzkoeVtY6lpEfGxtVW5V/qBDG
	9ssu+XRvESKyUxBpm0sgBbOZIMjNCrBCUXinBHGwY7V0ixMVxt0yd7HT1/Q88Z31nT54UBd
	TiMtdq7Ydfx1n6YULAL7LdPqTiC3coF7Gpp3bYSJS2OwRDP/PlSlqNRfnygr3J9Mxz7RnrO
	dV0UMH1FPT6Y1Sx+qycEcmDOYbW3DEjJocBJ7rBNrUOMehjAl9Dfi5AT2jXjPTuoYQQE7/t
	yLTFruh0sjQyKgt3cwjJQYCDKTOVw0jv9AjlTLymLXlnjUnmne0NHz4p4ZehT7r1keUkEIj
	CsFaYMM/P37DUaMYG73Cdyu2mVbtNWz3HtPf1u2S92VUbzoE7gD6eUqi3qvvNntDMfM3CEv
	p6j7xh6EW5sFJWOMeYB+/OBbTfF/sZPrvPY2TtqU9f4NsOdfFK42CgAUCZsm4VYtKaR5o3F
	lwStn3wYCV66k0pJkdBwzVaTwPaAVnT7hw4gYzxA19IFUygnEyjFurd/T+2t5Cfrtr95Hel
	k5rNqKGS6ecuQ0cqWr4tLjyNPqZr1bp71KtE/cqtVtILVzjqIP11x8ggBHCQ7BatMjKM76M
	kavMzRWTJqe9Fgxiqk
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_040722_628276_48AEFF33 
X-CRM114-Status: GOOD (  23.01  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 9/9/2025 3:33 PM, Abel Vesa wrote:
> According to documentation, the DP PHY on x1e80100 has another clock
> called ref.
> 
> The current X Elite devices supported upstream work fine without this
> clock, because the boot firmware leaves this clock enabled. But we should
> not rely on that. Also, when it comes to power management, this clock
> needs to be also disabled on suspend. So even though this change breaks
> the ABI, it is needed in order to make we disable this clock on runtime
> PM, when that is going to be enabled in the driver.
> 
> So rework the driver to allow different number of clocks, fix the
> dt-bindings schema and add the clock to the DT node as well.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> Changes in v3:
> - Use dev_err_probe() on clocks parsing failure.
> - Explain why the ABI break is necessary.
> - Drop the extra 'clk' suffix from the clock name. So ref instead of
>    refclk.
> - Link to v2: https://lore.kernel.org/r/20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org
> 
> Changes in v2:
> - Fix schema by adding the minItems, as suggested by Krzysztof.
> - Use devm_clk_bulk_get_all, as suggested by Konrad.
> - Rephrase the commit messages to reflect the flexible number of clocks.
> - Link to v1: https://lore.kernel.org/r/20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org
> 
> ---
> Abel Vesa (3):
>        dt-bindings: phy: qcom-edp: Add missing clock for X Elite
>        phy: qcom: edp: Make the number of clocks flexible
>        arm64: dts: qcom: Add missing TCSR ref clock to the DP PHYs
> 
>   .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
>   arch/arm64/boot/dts/qcom/x1e80100.dtsi             | 12 ++++++----
>   drivers/phy/qualcomm/phy-qcom-edp.c                | 16 ++++++-------
>   3 files changed, 43 insertions(+), 13 deletions(-)
> ---
> base-commit: 65dd046ef55861190ecde44c6d9fcde54b9fb77d
> change-id: 20250730-phy-qcom-edp-add-missing-refclk-5ab82828f8e7
> 
> Best regards,

Hi,

I'm observing what looks like a related clock failure on sc8280xp when 
booting without a monitor connected to a DP-to-HDMI bridge on mdss0_dp2.

Do you think sc8280xp might require a similar fix, or could this be a 
different issue?


[    0.390390] ------------[ cut here ]------------
[    0.390398] disp0_cc_mdss_dptx2_link_clk_src: rcg didn't update its 
configuration.
[    0.390419] WARNING: CPU: 0 PID: 63 at 
drivers/clk/qcom/clk-rcg2.c:136 update_config+0xa4/0xb0
[    0.390439] Modules linked in:
[    0.390448] CPU: 0 UID: 0 PID: 63 Comm: kworker/u32:1 Not tainted 
6.16.3+ #45 PREEMPT(lazy)
[    0.390455] Hardware name: Qualcomm QRD, BIOS 
6.0.250905.BOOT.MXF.1.1.c1-00167-MAKENA-1 09/ 5/2025
[    0.390460] Workqueue: events_unbound deferred_probe_work_func
[    0.390476] pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS 
BTYPE=--)
[    0.390482] pc : update_config+0xa4/0xb0
[    0.390492] lr : update_config+0xa4/0xb0
[    0.390500] sp : ffff80008351b9e0
[    0.390504] x29: ffff80008351b9e0 x28: 0000000000000000 x27: 
ffff0000850ec3c0
[    0.390515] x26: ffff800081205320 x25: 0000000000000002 x24: 
0000000000000000
[    0.390523] x23: ffff8000812052a0 x22: ffff000080467800 x21: 
ffff800081207ef0
[    0.390531] x20: ffff8000822ad6f0 x19: 0000000000000000 x18: 
ffffffffffc06b68
[    0.390539] x17: 616c707369642e30 x16: 3030313065613a6d x15: 
ffff800081474230
[    0.390547] x14: ffffffffff806b67 x13: 2e6e6f6974617275 x12: 
6769666e6f632073
[    0.390556] x11: 0000000000000058 x10: 0000000000000018 x9 : 
ffff8000814742b8
[    0.390565] x8 : 0000000000afffa8 x7 : 0000000000000179 x6 : 
ffff800081f742b8
[    0.390574] x5 : ffff800081f742b8 x4 : 0000000000000178 x3 : 
00000000fffdffff
[    0.390582] x2 : ffff8000814741f8 x1 : ffff00008091cec0 x0 : 
0000000100000000
[    0.390591] Call trace:
[    0.390595]  update_config+0xa4/0xb0 (P)
[    0.390606]  clk_rcg2_set_parent+0x58/0x68
[    0.390617]  clk_core_set_parent_nolock+0xc4/0x1e0
[    0.390630]  clk_set_parent+0x40/0x144
[    0.390638]  of_clk_set_defaults+0x12c/0x520
[    0.390645]  platform_probe+0x38/0xdc
[    0.390652]  really_probe+0xc0/0x390
[    0.390657]  __driver_probe_device+0x7c/0x150
[    0.390663]  driver_probe_device+0x40/0x120
[    0.390667]  __device_attach_driver+0xbc/0x168
[    0.390673]  bus_for_each_drv+0x74/0xc0
[    0.390684]  __device_attach+0x9c/0x1ac
[    0.390688]  device_initial_probe+0x14/0x20
[    0.390694]  bus_probe_device+0x9c/0xa0
[    0.390703]  deferred_probe_work_func+0xa8/0xf8
[    0.390713]  process_one_work+0x150/0x2b0
[    0.390725]  worker_thread+0x2d0/0x3ec
[    0.390731]  kthread+0x118/0x1e0
[    0.390738]  ret_from_fork+0x10/0x20
[    0.390751] ---[ end trace 0000000000000000 ]---
[    0.390760] clk: failed to reparent disp0_cc_mdss_dptx2_link_clk_src 
to aec2a00.phy::link_clk: -16
[    0.401093] ------------[ cut here ]------------
[    0.401096] disp0_cc_mdss_dptx2_pixel0_clk_src: rcg didn't update its 
configuration.
[    0.401112] WARNING: CPU: 0 PID: 63 at 
drivers/clk/qcom/clk-rcg2.c:136 update_config+0xa4/0xb0
[    0.401126] Modules linked in:
[    0.401132] CPU: 0 UID: 0 PID: 63 Comm: kworker/u32:1 Tainted: G 
   W           6.16.3+ #45 PREEMPT(lazy)
[    0.401141] Tainted: [W]=WARN
[    0.401144] Hardware name: Qualcomm QRD, BIOS 
6.0.250905.BOOT.MXF.1.1.c1-00167-MAKENA-1 09/ 5/2025
[    0.401147] Workqueue: events_unbound deferred_probe_work_func
[    0.401159] pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS 
BTYPE=--)
[    0.401164] pc : update_config+0xa4/0xb0
[    0.401174] lr : update_config+0xa4/0xb0
[    0.401182] sp : ffff80008351b9e0
[    0.401185] x29: ffff80008351b9e0 x28: 00000000fffffff0 x27: 
ffff0000850ec3c0
[    0.401194] x26: ffff800081205320 x25: 0000000000000002 x24: 
0000000000000000
[    0.401203] x23: ffff8000812052a0 x22: ffff000080467800 x21: 
ffff800081207ea0
[    0.401211] x20: ffff8000822ad640 x19: 0000000000000000 x18: 
ffffffffffc07528
[    0.401219] x17: 32636561206f7420 x16: 0001020ef3c08cb3 x15: 
ffff800081474230
[    0.401227] x14: ffffffffff807527 x13: 2e6e6f6974617275 x12: 
6769666e6f632073
[    0.401235] x11: 0000000000000058 x10: 0000000000000018 x9 : 
ffff8000814742b8
[    0.401243] x8 : 0000000000afffa8 x7 : 00000000000001a4 x6 : 
ffff800081f742b8
[    0.401252] x5 : ffff800081f742b8 x4 : 00000000000001a3 x3 : 
00000000fffdffff
[    0.401260] x2 : ffff8000814741f8 x1 : ffff00008091cec0 x0 : 
0000000100000000
[    0.401268] Call trace:
[    0.401271]  update_config+0xa4/0xb0 (P)
[    0.401281]  clk_rcg2_set_parent+0x58/0x68
[    0.401291]  clk_core_set_parent_nolock+0xc4/0x1e0
[    0.401299]  clk_set_parent+0x40/0x144
[    0.401308]  of_clk_set_defaults+0x12c/0x520
[    0.401314]  platform_probe+0x38/0xdc
[    0.401321]  really_probe+0xc0/0x390
[    0.401325]  __driver_probe_device+0x7c/0x150
[    0.401330]  driver_probe_device+0x40/0x120
[    0.401335]  __device_attach_driver+0xbc/0x168
[    0.401340]  bus_for_each_drv+0x74/0xc0
[    0.401349]  __device_attach+0x9c/0x1ac
[    0.401353]  device_initial_probe+0x14/0x20
[    0.401358]  bus_probe_device+0x9c/0xa0
[    0.401367]  deferred_probe_work_func+0xa8/0xf8
[    0.401377]  process_one_work+0x150/0x2b0
[    0.401384]  worker_thread+0x2d0/0x3ec
[    0.401390]  kthread+0x118/0x1e0
[    0.401395]  ret_from_fork+0x10/0x20
[    0.401405] ---[ end trace 0000000000000000 ]---
[    0.401412] clk: failed to reparent 
disp0_cc_mdss_dptx2_pixel0_clk_src to aec2a00.phy::vco_div_clk: -16

-- 
Best regards,
Xilin Wu <sophon@radxa.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
