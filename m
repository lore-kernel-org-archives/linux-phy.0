Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99AE9606A321
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 02:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=F9YRNGn6;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=bQZe0YDz;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=dlySbd4V
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ShGTxAzR+BV3r+ObdTHEyLhZxcIr9xP30fwnl9j+7ME=; b=F9YRNGn6AIZBbNqNtGWpmxX9RF
	C0HpnHtrRv+9BLxPGDGqzHM23Fr9N6L1O7kNimav7VwH18vDyW+XILdTYt/kZuRz38XjFc6Z3qGTE
	zbzlbFxTNOJBIVpBTlo/OvByZQ5Oj2qn6D27IZRQYkO/DamDxLbFENG5wucEbZFz7jvWI2YsM933A
	zM4+XCLJ4y3u6Z3wAlsTDn3CnQhSky4VIOa5Ki46JjXaVNL1ZHkLEjwbCl6QqrD7JeQQWxgKClpkT
	sQeRw6KgEik0E73uphHISOuG+vY5taIxGTLxGp8wjUt2d7YEWdow+0HEiAkRCUKRFJTE5KJH3MUyb
	hpadCV/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVgYw-00000005Ot9-1EK0;
	Tue, 24 Nov 2026 02:47:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVgYs-00000005OsW-3zXu
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 02:47:16 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AO2kNRv2209250
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 02:47:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9H02wQlFdIPXluo4QYcyx4Df
	thKEsjHhuAsKhNR0hjA=; b=bQZe0YDzTkdonnXeELT7B9bA5TvvL92s3bCTVn7M
	INPDPoc5ractfCsOpm42KbDBPg8nxqVwYIumL6eKqSXXHa5PwMGJCR41TZsM3qH/
	qKqevsUVrqeLA0+3gV+eDwI+1pCN4FtCzJowkA6aBZ0d3D0zr7n7ZKPJD2r2LgCG
	Zr2COTTb67s8McvamY+innqVWzw1pE4dQZZkRO88ekqQG9XA8dmy48vGmXpIyWmF
	ogU1BNiY8ORaoDhWOb5OJ3BNCQr0tDGsQqKwgcmE+4m702gTlYEsUTHEbcEA7R4w
	+Wfd4mfk0g3fjGkPbxaMBdvQCwdSYPQEoI7DCwqRNW+9Rg==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j4yy10dn3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 02:47:12 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-1a5005fd0f8so1717223c88.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 18:47:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795488431; x=1796093231; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=9H02wQlFdIPXluo4QYcyx4DfthKEsjHhuAsKhNR0hjA=;
        b=dlySbd4V4lLdlH0YdnVInOTe4TiBR51WwPytinmaMnab00VW2AOeZRvAeWA9B9Lqz8
         cMtoj92OdXBsq66rGTKMOuxM2YyhYl0bKrArO+ZiiKp4dUPm2hZl0egQcCmhevoUQhwK
         xRnO+KlphqpSiRxrHCrr8fQovDAtrAxohwhTrdtYnkkDrylY6UGY7xamp3kYbIIKahiU
         DvGO6cSLJncn6jDYd4WXRf32gdqkFPJJo4vXB57bOMT5A5s5y8xMHTKDsoGcBWKeyQNa
         HtcXuRmEQOE9zb4E+yqzeSHHXCFOWAC+G6j56NF9Jy5OFnEAk1gPXD7gZniGbX5sg1qY
         rqCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795488431; x=1796093231;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9H02wQlFdIPXluo4QYcyx4DfthKEsjHhuAsKhNR0hjA=;
        b=j3D/rmVeBDTOaAUxSsbQjmCcFjfV4KhKfWCq+W6YYsos8/jasLDSB18Dz7LNEWUqjU
         7NSsa4LpQe1ZTl7F9JCypqV+zNYsyqraKqeIxefsElwm/N/nCOi6QpdY+qfZRXJHoye0
         spb0hMqgqga6b12zPdPUpF2x4wQXRRZdVsXh2pMsBYd3eLBgSiQgft8YtideQPXXtIsq
         cxGmRXYYg4Nr8eS8DqB5X/tO59ZMp9VZ4FUCSLIRUkBM3TbTW24MWFTbQsG9czaSFpE3
         wi1LkFVZ/By/HZ3+kvUCHmvxHbWIN1ygwgmagW3u/CZa0hAkk1ac3ZFRN11FgnjEZ9Tk
         m8jw==
X-Forwarded-Encrypted: i=1; AL+hErF6n8WNAVJEfU8Bgg/yawkEtnd+1XuduVMe3A6JaPPiGd9j3AZgWfi55Jp0eSxxL9MApyk2dE74NjY=@lists.infradead.org
X-Gm-Message-State: APuU4Z+0LpJpazT3jpD7EbZ/5/qmdZLqEyuwCTnetNz+cRqk2lqeqgbg
	Ndz7oHvb3SOPaPM/XeImSiCRSv5K7CDcy0Ztcs+qD/XcSOSp0dmf5nKhSmRApYVawHg+h3QlfQL
	2HbiMs3xzWr+CY9TGjRWuqyhJslWEDjOy2FZ29bsqbQIs2jdREwqwi3zmlhr55Zg74Wcd
X-Gm-Gg: AZFdTZfExKhuilGpDVboIHK9yrw67si+sm5GVBK0M4AAfCLSsXFC4SzkqAEBP51SiQ3
	Ebrh7b7Y4su8Lhq1tPT9j/CyZlpjRnQ6h9dS4AtaYxJ0k5B/CNLRCDzAU1dJZVvXyaSYS0XBaeP
	NB8MojAtBmaliLi5SDN/WBhh0zjp3SEIQPlYWAPqy9di8cAZxcGSuXJTtMvLu9Q56f/akP1fLYG
	IjrcqAX9M6xj4mtCzBUhwgC0CcdTByxBu4U4/CYcS5Ka5A/3NcUjS5zBKt3u77axcQslteyO10L
	XiPHktkJBpEV6mwpMJW8afVF8ELGaM6svRoYuiZAR+AlaDkK7Nbxy9l6Da+14MQTvmZjmXRhhg3
	sQgvLpKaIMq6HBCqhI8tUMs/VK915/B0AyUaGmq5KeqjmC8FFBTB6VlxFUQb3sMGakxHPwKOxpY
	+z/R/+8ewnFgAzdPDVMInYGA8=
X-Received: by 2002:a05:7022:2608:b0:1b5:342a:e4f0 with SMTP id a92af1059eb24-1b5568b678fmr18621058c88.6.1795488431300;
        Mon, 23 Nov 2026 18:47:11 -0800 (PST)
X-Received: by 2002:a05:7022:2608:b0:1b5:342a:e4f0 with SMTP id a92af1059eb24-1b5568b678fmr18621015c88.6.1795488430785;
        Mon, 23 Nov 2026 18:47:10 -0800 (PST)
Received: from hu-petche-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b556847fdasm35685565c88.13.2026.11.23.18.47.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 18:47:10 -0800 (PST)
Date: Mon, 23 Nov 2026 18:47:07 -0800
From: Peter Chen <peter.chen@oss.qualcomm.com>
To: Joonhoe Kim <26rote@gmail.com>
Cc: gregkh@linuxfoundation.org, Thinh.Nguyen@synopsys.com, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, heikki.krogerus@linux.intel.com,
        abel.vesa@oss.qualcomm.com, abelvesa@kernel.org,
        wesley.cheng@oss.qualcomm.com, krishna.kurapati@oss.qualcomm.com,
        konrad.dybcio@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        neil.armstrong@linaro.org, val@packett.cool,
        balaji.kalkonda@oss.qualcomm.com, tvlad744@gmail.com,
        effeffe99@gmail.com, prashanth.k@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tapas.rana@oss.qualcomm.com,
        vkoul@kernel.org, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jack.pham@oss.qualcomm.com
Subject: Re: [PATCH v4 0/2] usb: dwc3: qcom: Keep USB 2.0 working in
 DisplayPort-only modes
Message-ID: <awT6qwRVeAuPRBth@hu-petche-lv.qualcomm.com>
References: <20261119124558.1548-1-26rote@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261119124558.1548-1-26rote@gmail.com>
X-Proofpoint-ORIG-GUID: Xa0TeNL4sl9XOqYwNcDItf_FQiXryWm-
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI0MDAxMCBTYWx0ZWRfX+VPS1iYLJ/PI
 ewqBLcsT9m4GZUuxYGRjiEh5bn1VtGRu0V4Qprriqlrf8y5Ipdfw5h8rK7AYysqahFt0W7aM4pt
 HUuQg81OHLAXfNThPO14NCh+tmIQOxM=
X-Authority-Analysis: v=2.4 cv=JYspPkKV c=1 sm=1 tr=0 ts=6b04fab0 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=dLxMsxsk7CsyiYUDLEoA:9
 a=CjuIK1q_8ugA:10 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI0MDAxMCBTYWx0ZWRfXzOyg9tSs4OF2
 rnGJTz131qlRnjfULA3/lnTtJQfHRfJrl18glVFHtIEi6P3OjKkkhRvOzrIvksST/1dC433V46N
 E5RkxYKxHOnLFIiRMyjEU9BzgHrqCT/s6aqfllq0SB+itHMFeiolXy6m8O9UKIIyFKFHmBL/4PP
 bmUXo9lc30mQmV74a81pvAItC/IS96PNERc38GuikhHr9ieWf6+slgNSSZl/W2NTWzc9dG9hTJ5
 wK1q/H/kfKVYSvi6j5xrmE9p2RgOy3+fci120A9wWB+Qvm1sNfNBMJYtdeXOfM/0Ko4HdArCCA/
 PgJJ5SaV17cSWP+TDIp0eEvWtu5nIlHAzALDmWAgGqyhHS5ZEjoX6MekN3p/CWHS1BksRJblVc8
 SPDEcYlPTZaOzoVUSG1FPdFJ9uPmyIIY4ja/i9R+W3J2kOApHu5wqneaWFy8RuFt5YwQJRMgISE
 Fyl+R/NWtnlxA5jsZhQ==
X-Proofpoint-GUID: Xa0TeNL4sl9XOqYwNcDItf_FQiXryWm-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-24_01,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 adultscore=0 clxscore=1015 bulkscore=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611240010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_184715_109614_992FA335 
X-CRM114-Status: GOOD (  38.49  )
X-Spam-Score: -2.8 (--)
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 26-11-19 21:45:56, Joonhoe Kim wrote:
> With a USB-C monitor in DisplayPort pin assignment C or E, the QMP
> USB3-DP combo PHY gives all four lanes to DisplayPort and keeps its USB
> PCS powered down. The USB 2.0 pair still works, and such monitors often
> have a USB 2.0 hub, but the dwc3 controller still runs from the USB3
> PIPE clock. On Kaanapali the next xHCI reset in this state times out
> ("Host halt failed, -110"). USB stays lost until the cable is replugged.
> Commit f546912bcac6 ("phy: qcom: qmp-combo: Move pipe_clk on/off to
> common") keeps the pipe clock branch enabled. That is not enough here.
> 
> This series registers the dwc3 glue as a Type-C mode switch next to the
> PHY, so that it gets the mode (it does not route any signals). In
> DP-only modes it moves the controller to the UTMI clock, as
> "qcom,select-utmi-as-pipe-clk" does statically, before the PHY switches.
> 
> Peter Chen suggested on v2 that the PHY could notify the controller
> instead [1]. This series uses the existing Type-C mux framework:
> typec_mux_set() calls each mode switch linked from the connector in
> graph order, and the controller (HS port) comes before the PHY (SS
> port), so no new PHY-to-controller interface is needed. The cost is a
> "mode-switch" property on each controller node. If a notification from
> the PHY is preferred, the clock selection in patch 2 can be driven from
> it instead.

Hi Joonhoe,

Thanks for explaining the trade-off in the cover letter, I may
still prefer that the PHY notifies the controller is better, for
the reasons below.

- The controller may not know well what the PHY really did or is going
to do:

   qmp_combo_typec_mux_set() has its own policy. It does not
   reconfigure while DP is powered on, and it skips the switch when
   the PHY is not initialized
   (drivers/phy/qualcomm/phy-qcom-qmp-combo.c):

	if (qmp->qmpphy_mode != QMPPHY_MODE_USB3_ONLY && qmp->dp_powered_on) {
		dev_dbg(qmp->dev, "typec_mux_set: DP PHY is still in use, delaying switch\n");
		return 0;
	}

	/* The mux still receives Type-C events, even if all PHYs are uninitialized */
	if (!qmp->init_count)
		return 0;

At above cases, no switch clock from PIPE to UMTI is needed.
If qmp-combo calls the controller right before it tears the PHY down
and again after it brings it up with the new mode, the controller does
not add wrong or useless settings. It uses the UTMI clock while the
PHY is being reconfigured, and goes back to the PIPE clock only if the
new mode has USB3.

- Once DT ABI is added, it combines the kernel code with DTS. It needs
to maintain both DT property (graph) and kernel code correctly, eg,
it also depends on the layout at pmic-glink node. If using PHY notifies
controller solution, it adapts for all related SoCs, and no dts
dependencies. 

Thinh, What's your opinion?

Peter

> 
> On Kaanapali the PHY becomes a mode switch with Balaji Kalkonda's
> DisplayPort series [2]. The controller side for that SoC is a DTS patch
> sent separately to the Qualcomm tree [3], and Tapas Rana has sent the
> same for Glymur [4]. Neither should be applied before patch 2: once the
> controller node has "mode-switch", pmic_glink_altmode defers its probe
> until dwc3-qcom registers the mux, which only patch 2 does.
> 
> Patch 2 is on top of Filippo Falezza's "usb: dwc3: qcom: Restore UTMI
> PIPE clock on resume" [5] and reads the selected clock back from
> QSCRATCH, which loses its contents in system suspend on SM7250. [5] is
> still under review; patch 2 will be rebased if it changes.
> 
> Patch 2 adds "depends on TYPEC || TYPEC=n" to USB_DWC3_QCOM, so with the
> arm64 defconfig (TYPEC=m) dwc3-qcom is built as a module.
> pmic_glink_altmode then probes later, and a monitor attached at boot
> depends on Yongxing Mou's "drm/bridge: aux-hpd-bridge: replay last HPD
> status on hpd_enable" [6] to be detected.
> 
> Tested on a Lenovo Y700 Gen 5 (TB323FU, Kaanapali) with the series
> backported to a v7.3-based tree that also has [2], [3] and [5], with a
> USB-C monitor that has an MST hub (two displays, DisplayPort over four
> lanes) and a USB 2.0 hub. On each of 5 plugs the controller switched to
> the UTMI clock 1-2 ms before the PHY switched, back to the PIPE clock on
> the next USB state, and the monitor's hub enumerated. After each of
> three s2idle cycles with the monitor attached, both displays and the hub
> came back. Plugging the monitor in during s2idle woke the tablet. The
> mode arrived after the glue had resumed and was applied right away,
> before the PHY switched (once with each clock selected beforehand); the
> path that applies a recorded state on resume was not hit. A USB-C hub
> with DisplayPort and USB 3 kept the PIPE clock, and a USB 3 stick on it
> ran at SuperSpeed.
> 
> Changes in v4:
> - Patch 1: add Reviewed-by from Krzysztof
> - Patch 2: mutex_lock()/mutex_unlock() where nothing returns early
>   (Krzysztof)
> - Patch 2: leave the probe code as it was apart from the new argument
>   (Krzysztof)
> - Rebase on next-20261118
> - Link to v3: https://lore.kernel.org/all/20261112113838.506-1-26rote@gmail.com/
> 
> [1] https://lore.kernel.org/all/avZ7-Ax-_VwcJhYG@hu-petche-lv.qualcomm.com/
> [2] https://lore.kernel.org/all/20261022-kaanapali_dp-v3-0-b5ae8e6083c3@oss.qualcomm.com/
> [3] https://lore.kernel.org/all/20261112113921.1143-1-26rote@gmail.com/
> [4] https://lore.kernel.org/all/20261117113834.925310-1-tapas.rana@oss.qualcomm.com/
> [5] https://lore.kernel.org/all/20261027-dwc3-utmi-resume-v1-1-ca9f0aa65783@gmail.com/
> [6] https://lore.kernel.org/all/20260803-drm-usbdp-preboot-v1-1-2539b362be00@oss.qualcomm.com/
> 
> Joonhoe Kim (2):
>   dt-bindings: usb: qcom,snps-dwc3: Add mode-switch
>   usb: dwc3: qcom: Use the UTMI clock as PIPE clock in DisplayPort-only
>     modes
> 
>  .../bindings/usb/qcom,snps-dwc3.yaml          |   5 +
>  drivers/usb/dwc3/Kconfig                      |   1 +
>  drivers/usb/dwc3/dwc3-qcom.c                  | 150 ++++++++++++++++--
>  3 files changed, 143 insertions(+), 13 deletions(-)
> 
> 
> base-commit: e8017d29067fd1310a65c3494ce1a1b492adbac6
> prerequisite-patch-id: a793fca7329dac964c21459f8d7a8b003d36d84d
> -- 
> 2.53.0
> 

-- 

Thanks,
Peter Chen

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
