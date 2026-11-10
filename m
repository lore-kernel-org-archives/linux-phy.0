Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A890606A963
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 07:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RPQ16XbH;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=VDj1jSP6;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=jkOiSWgn
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pb9jUbOgKjHxx/xrxDkrehQrLBp8NBuVleBuLbWoYRE=; b=RPQ16XbHpSchLsChsqecagezve
	f1VupngX3sy3wG2rGBh94Gm9ZDB4yxBeEy3YyfQ7Ql6XbiaUbgH/MZqVI8IUJTdsS/m5vOVj02fAO
	0UAOObqVEf1NPqG8uZJ4w4WUf4FrAsUu/zxXrL0z4n4hsJ1wnEO2rAW45tVcL07y78HH6Tcwwf+We
	13T+3dW8Anz5nH1bw5b0sxz5m/qp431GsOBdvtSfvv5qa4fn1MJYhvvm25SmDa0ehS4YdIHWV26LE
	o9aGV58Re2qKwJmyMfKP5eqNWOyAgLiAb3U8nwQejaU3/qtAEJ6FGOmX4XoJoi5D/ueqR5QEfkzRi
	FByHOWNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQgg6-000000031mE-1Ax4;
	Tue, 10 Nov 2026 07:54:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQgg3-000000031lE-42iP
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 07:54:01 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AA7kp7e3742708
	for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 07:53:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=k40nDh/DlGtTF2XbNI2TG8kn
	C7Im/kFKhYdaLoOlitg=; b=VDj1jSP6Kx57MAyoqGynoI6DZIi1eMpV4I3D5PCT
	Y8OrPUOmNfA7IYtea0LpZf0cEdIq0RlZBDmBKI0uyVkPlON6WnPpLYW/xrzd4FLK
	P9L70rL+NplPFkyaccPVHpf/CSQWIv9mLJBoKAZSZeTu9pv3GZFbak1yebUZ1YoD
	vSQziQzMhn0HTPTv/cS/QsGpSllOKPNglnRfW8dlEtvuWEeaquMnmPjjKKOZv1U/
	s4t0/e2SGPTd0hd5PLmafOz6SKBv8mfseWU1PL059TUanlLrqXiLDavzeJJ/HlQA
	TCbmPiqRaY9Jr9jLceGVskvzhMaP/jPpSAUWKGw7SUhhpQ==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hue0qv1x7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 07:53:59 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-1a2af4c8cbaso1401082c88.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 23:53:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794297238; x=1794902038; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=k40nDh/DlGtTF2XbNI2TG8knC7Im/kFKhYdaLoOlitg=;
        b=jkOiSWgnzcdJOGGpbLkKDXp5pm5WjSJPg/BOTOEVEcJCMakYtXYy7oNo7SXJltYerI
         Sw0wh/e3bBSrsmSQUysY4Kz3iCXqegOV43CvFqfI6B2icCxVduVx0dRw6B7QZoYC+/aq
         h2RXZwwsL2M3YNeOOF7DQzTAfl+YVkZ0bXp5QUx2EfDDRJmt25sA/wa1qL9UGGb4oYLs
         Nyn/hi/qDirg7qLwkckZUYaWFPciu9Sqljte/R2LN4k11Xlc0wEm+aDjabbRWx0hF5oX
         Ni21LMPJLIyLiOgEQlBfzQyybmcdbNzxI3kHsmdEVMbsV6uMXjPup2HVQfZcnA3TM/xu
         G1dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794297238; x=1794902038;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=k40nDh/DlGtTF2XbNI2TG8knC7Im/kFKhYdaLoOlitg=;
        b=CnIYkDPVgUm+LSmO2IxTVjIY+Q+e2Mv6585MzrUy/Lclrqz7riy8DYrDZWXz8R3XNA
         vl6nql0Uv2JHb/28fiLfsFgw2l17RthWolaNdxfpkQwRy/oV+HjLzefasU0bLZvmoOj2
         BEBgO9og81IOHGmj2ME2yV4Ue3iAxCAhi71yFLAJsF35zJx0bbz82HVUY3wvGEAaaPZP
         ZQqDcvJoKWqS+jJrIHGQnhS6et+MPO6WrHO8UiEXaMa7S5uXJeAAcbt8ViQkCXVT3ptn
         ycAinb3L5h9MS9OFCmTO4Y2Rb4zg/ejqOXBoacWU5OsW8Hcro0G7W/TaH7elcSgXD7L1
         UqWA==
X-Forwarded-Encrypted: i=1; AL+hErEaF92T1/gEnns1JbaySyrd5ZTSF5P+myqCxyT1ZZhYh6dl7AJX2MbAPxrltULPlS1w7/p7Z+KnB/s=@lists.infradead.org
X-Gm-Message-State: APuU4Z88uzUSs5xiOQcI1c+ujmdrhha81IIoner7vgXf4L+FTUkxh3IU
	8O2JenSi+gO1NY/TgiadHDLrYU1RT5KD7r9UiL4lxfVirKyBtX+o9o02/oA5zsp2iCSdhJEJuO8
	8OWd7cofRQjqaLm1k3mqI2CjKg8O9evAGC7LB6T+JOuK0nofDR/GDDwGeiP8MGZXKLuzz
X-Gm-Gg: AYBFou2Y3EuwrlXOwVLJMWlioBik7rIhExLGFthFLYT76e6DcXQ5NIc1cCWpanXzRGu
	ExVRnyhvLz8sBwpPNgVqIs83+GdeKUQ8AioQBMglVVV9MD+hZrS9EZZj7t/XIqdCRm96r982dKj
	i8Tmp6Di2sCRaKr/NRehrhfbdq1xRAO+v97GrN/j+UxW4CmwG61HTCaHd8LCYntmQ5LxvNYX0ol
	KvIXDsZ1fzMM01cxcEaP+X7mFQ/emQslBQKiOu4kn7ITjFnnOD9NlBpZivYC6XyJnTcClTn21ws
	5wlk/w+1w/yzIAPUQYMtNdjGaF3mn/QrbBEGLwb5V+BXk25bxxcOze5ThIViBe2OroCA1YZ7ekf
	9pJLt9lp+GHZSDi3Q2sKSukMyXyxkiE3P0jHYITu6ANCZrN6BsxROLe1NsdQwjauA5LE0Lswuo9
	lP93m7D1P7am6x31neD8aE7A==
X-Received: by 2002:a05:7022:b052:20b0:191:ac4:55a7 with SMTP id a92af1059eb24-1b3b6025b98mr2771612c88.23.1794297238085;
        Mon, 09 Nov 2026 23:53:58 -0800 (PST)
X-Received: by 2002:a05:7022:b052:20b0:191:ac4:55a7 with SMTP id a92af1059eb24-1b3b6025b98mr2771573c88.23.1794297237340;
        Mon, 09 Nov 2026 23:53:57 -0800 (PST)
Received: from hu-petche-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b3b5b11150sm7259850c88.5.2026.11.09.23.53.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2026 23:53:56 -0800 (PST)
Date: Mon, 9 Nov 2026 23:53:53 -0800
From: Peter Chen <peter.chen@oss.qualcomm.com>
To: Tapas Rana <tapas.rana@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Esteban Urrutia <esteuwu@proton.me>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Faisal Hassan <faisal.hassan@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        prashanth.k@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] phy: qcom: carry live SS-link state without growing
 enum phy_mode
Message-ID: <avLNkT-UPTsFeqsb@hu-petche-lv.qualcomm.com>
References: <20261106082716.128968-1-tapas.rana@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261106082716.128968-1-tapas.rana@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEwMDAzMSBTYWx0ZWRfX+k/iBG8xjYWO
 iFgHueltzrDatBWQx+mNeA+5pWyYz+Zgk4dzS0uxB9jl0lAn0jNl8pVXEIU8dEGTZWb6BLEM3La
 a5OsxHyKajijWa7GZ7JttNCRKrmEH0KzcEAX6LKHxJgUb/vV+xZURste/XlIUKh6kNqb8yznq8T
 uOqtxNOOHM9mPJob3VIE65vZR7tfkd3Pb5V9WyBMMj6WcGq+r5WWPN3gZ5hLSuXbC5QpehZHYtI
 zUfUSCKTe7nTEGmGzxP3iC9SfhJKVQBnPsq9zgcJO1V9FVb9hrpQLO0KfT+SLTNH2ucajcI4nB+
 pgMHdR/dAtaXM27Rk3dOBopoKjBv7LvHYT5fBTg3ZtFRgM1ob+A1OX9V2Gmmf56NRKUsBOt/GyN
 SOQxuBVjVfH2l3600bfIpAQFfzHCo3CtA3ZDMhzECE+m4IO+/8sTIYOlZlEPXJCKMgGrHi2xjAz
 RyvtUpPyhJaROxoIxbA==
X-Authority-Analysis: v=2.4 cv=DZuCOftW c=1 sm=1 tr=0 ts=6af2cd97 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=8fdUJlHZo7_b61wjJHwA:9 a=CjuIK1q_8ugA:10
 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-GUID: JQUrHIsNBxdqQx_3ev4-Mr0T3uFsYpVb
X-Proofpoint-ORIG-GUID: JQUrHIsNBxdqQx_3ev4-Mr0T3uFsYpVb
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEwMDAzMSBTYWx0ZWRfX1TFEv6A69I/8
 VYvN5v79Dnl8aT1gtOmEcg4Axdv9oqaBlgkUpXXbD/uLNMOMWMOTB7ha6yCPsxnbVvziPqlg743
 ipaBye5dcRwrAVWA6mHpt7wYorcXnWU=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-10_03,2026-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 phishscore=0 malwarescore=0 adultscore=0
 impostorscore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611100031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_235400_007526_4779F6D9 
X-CRM114-Status: GOOD (  29.86  )
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

On 26-11-06 13:57:13, Tapas Rana wrote:
> QMP PHY drivers always enable receiver detection (ARCVR_DTCT_EN) in
> autonomous mode, and additionally enable LFPS detection (ALFPS_DTCT_EN)
> when a SuperSpeed link is present; otherwise they fall back to
> receiver-detect event selection (ARCVR_DTCT_EVENT_SEL). This choice is
> made by comparing phy_mode against
> PHY_MODE_USB_HOST_SS/PHY_MODE_USB_DEVICE_SS. However, dwc3 core only
> calls phy_set_mode()/phy_set_mode_ext() with the base
> PHY_MODE_USB_HOST or PHY_MODE_USB_DEVICE, never the _SS/_HS/_FS/_LS
> submodes. As a result, the comparison is always false and the PHY
> always falls back to ARCVR_DTCT_EVENT_SEL, the legacy USB2
> receiver-detect path, regardless of actual link state.
> 
> Add a dedicated qcom_usb_ss_state submode and carry it through the
> generic submode argument phy_set_mode_ext() already defines for this
> purpose, instead of adding more values to the already-overloaded
> phy_mode USB host/device submode list.
> 
> Patch 1 adds the shared enum qcom_usb_ss_state (UNKNOWN/PRESENT/
> ABSENT) as the submode contract. Patch 2 makes
> phy-qcom-qmp-combo.c switch on it instead of on phy_mode. Patch 3
> makes dwc3-qcom.c sample live SuperSpeed child-device presence at
> suspend entry and pass it down.
> 
> The contract is intentionally generic so phy-qcom-qmp-usb.c can adopt
> it the same way for the gadget-side case in a follow-up series,
> without a second mechanism.
> 
> Tested on an x1e80100 CRD. On a host port with a SuperSpeed hub
> attached, suspended the system and then connected a SuperSpeed USB
> pendrive to the hub; confirmed ALFPS_DTCT_EN is set instead of the
> legacy ARCVR_DTCT_EVENT_SEL mask. Repeated the same sequence on the
> USB-OTG capable port with the same result. As a cross-check, repeated
> both suspend scenarios with a High-Speed-only pendrive attached, and
> again with nothing attached, and confirmed the PHY falls back to
> ARCVR_DTCT_EVENT_SEL in both cases, as expected when no SuperSpeed
> device is present.
> 
> This series spans both the generic PHY framework tree and the USB/DWC3
> tree: patch 1 adds a new header, patch 2 depends on patch 1 and touches
> drivers/phy/qualcomm/, patch 3 depends on patches 1-2 and touches
> drivers/usb/dwc3/. All three should be merged in order and ideally
> through the same tree (or with an immutable branch) to avoid a window
> where dwc3-qcom.c references a submode phy-qcom-qmp-combo.c doesn't
> yet switch on. ARM/QUALCOMM MAILING LIST (linux-arm-msm@vger.kernel.org)
> is Cc'd on all three patches since it covers both directories.
> 

Is it really we need to do such complicated, why not just call phy_set_mode
before suspend according to existed downstream port speed under root hub,
it is normal requirement to finalize PHY setting according to connection speed.

Peter


> Tapas Rana (3):
>   phy: qcom-qmp-usb-ss: add shared SS-link-state submode contract
>   phy: qcom: qmp-combo: Select LFPS detect only when SS link is
>     confirmed present
>   usb: dwc3: qcom: pass live SS-link state into PHY at suspend entry
> 
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 27 +++++++++++++++--
>  drivers/usb/dwc3/dwc3-qcom.c              | 36 ++++++++++++++++++++++-
>  include/linux/phy/phy-qcom-qmp-usb-ss.h   | 17 +++++++++++
>  3 files changed, 76 insertions(+), 4 deletions(-)
>  create mode 100644 include/linux/phy/phy-qcom-qmp-usb-ss.h
> 
> -- 
> 2.43.0
> 
> 

-- 

Thanks,
Peter Chen

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
