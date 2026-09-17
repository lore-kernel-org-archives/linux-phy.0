Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67D18C88E72
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 15:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ovlkyIP5h8Rh1zB39ed/qTlzGpHA6FAOsPlr8AOh0fs=; b=C7aYcmbK77XoTT
	quRiMRv7G1BLpgDNIto2HJG5RBjYF5sdjcZ4Mv9i3fsF2lYjQ+uP2qweE4/5b/RA1MnbETKKJyOwN
	ANj65HzXwFuMK0dskJPXRwyORcnjdisw5wU2x5eAeyqKS6PR7IrTW3GMtF4Ed/AEHhjY1Iu6OfCpt
	CBPi8Iu0vxREVH7QhDOIRe82bEb/R3IPU72GyW2ycOcbJ/qW9WIzP3lxs7brvTsGqVUX0mGwSWFLm
	a0IRAixxtmAuMfnozpvWIL4IAXcwpTSypoke4A/bgSYgS4kBqN9k9fZCk7Lx64hxRnP82E/jef2py
	b+PCRDb7jv8Qj9WE3whA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7EE1-0000000Biuc-0YTo;
	Thu, 17 Sep 2026 15:40:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7EDy-0000000Bitd-2du9
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 15:40:35 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68HDjDY01175976
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 15:40:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rr9nZ43kdvMALTpIFc6ok99/
	5qlXBkKCu/1I9wfOAFA=; b=ayaH0sUITjabaDdIPAYhHTVjLBCsnm63mijwgCk7
	Niqj3+A8zLP57KpKvEyyOfgbjRN8eCIOMejql7Fe3tJcX3s/ulsH+n2wksOZGgOY
	fahRWNVrGmoL+BIi4qDo8oDcUMskD2vd/bjTvabG4YjErWKubI8LNhEsO3IPy+3N
	3MFgqkRsU1dxGvYB6kCjsrNdSD3TY5cyHFYPbMDuQsunZHQD147AiMwtNkZddC4J
	nltaNxfqda1+CtESX+asQB7zL22lSp1UeUd0WL+Yr/IR1NkHPUIULs1lfYrMhSlJ
	Yk3NS+TDRJSPhg/x7NKi18yUB69chI3/nVrlCXgL79vvPA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4grca0t1f3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 15:40:33 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-939f925ba4eso262350985a.3
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 08:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789659632; x=1790264432; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=rr9nZ43kdvMALTpIFc6ok99/5qlXBkKCu/1I9wfOAFA=;
        b=TQNB4VR+hON96khN9PEq+XYzhdDNygE8ZUt1T/RsbjnjmquWHHeaw8PpheuhzNBCOP
         NChRl3URHA+r9rFBe/Pfp5p5wG039ZIgKr4yKA3UDt4LN4qMtKjDk4+UbGoLNkY2BNxa
         SBVMOV0HYeELMAjcIODB2lqZRCJdLLsqN4D0M/Ru+5DzOvOyAIt1NVY2/xIs5FrrKfF+
         Qg318oXm3cRs6r3BBplU71uTxSg6AAGCgTg/MfwADINSyEHmCQBbYdONuMrlEQ3cORzZ
         ztoR5wpl+nsplJu2dlMclrZ33X/wCcz4F2h7u3A0KI+nAuYS1ip3FQ5ewGRvyJmx9RPb
         f+eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789659632; x=1790264432;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rr9nZ43kdvMALTpIFc6ok99/5qlXBkKCu/1I9wfOAFA=;
        b=h2nz1p7GJKQihe2/UHU1MDHfB8mJVGTWD8wqiTSjxENjmWUUEiefz161C+WDYFg+CO
         8NVEMe73L2l9hTNbslcmGyugj2GM8McczivXBt9QDxsrTwb2KE1y81ZEtea8kLhTi3UD
         DEgclI8SKdG8wl8rbupwIALlLRJTKUKrhPnGFc0U8hVvtGDW4zCigFA+VufEp7B1qHRP
         aYaf/lhvqwTninNYW0yzoU5AMixBluMS1HTssHeQog6LvsWxF62w9F6f/s65vwPQjkx3
         Pmm5lEZa5e5jUN19S/BsVW29RX6ly8KfVorqSIQeAv4/e25kRm0qLhpTpk8lv9cdbviT
         yw5w==
X-Forwarded-Encrypted: i=1; AKwUvByqAwqLNSVCZTJUYtBidqrsfugAaBjl9SLLwHmU6rnxMRXm7LFj5MBRD4RggbUrnwtWyUh5bVXygeQ=@lists.infradead.org
X-Gm-Message-State: AFuF++mm4pUiWc9I/oOsVUK+gi8D1VCa+x6ajwYFMqaVxquYzT9M7v90
	OunEy6g4hmVw3Jyd/Pv9fdv5tSCR551mgSsDUi7ohppGTmoFI7cr5ADFc+LPJojd1XGaP8xQ2sE
	7ryUddfzcdZsvIlBgX6F/pqw0E/3d+OCCBvUkn9idW41alh8VQj18aiLO/AkBV/Txiitj
X-Gm-Gg: AYBFou3jGLp3mX+nt0/u6AITR0CSMZJ81jNsW/RJHTEFGO1IeaeSoAs0Wum/MqjIh1M
	o9su7dn3GjIq8sFzZXG6NFWRcfO/JhXgyEVfxyZMo6kdboJLAC4ggG/ljkwI9zmzk8iVkIj9YOv
	Pd43NJDcwqY7tqQhG8GzygRAW8rQvlWfDRsavHisB/2MlOmLKF8Lvgsqd2Cu7T+/i6k4+8Lx3Vh
	uOY6/PyMkXTOdMqlRVhDQYkDIvc8iUuXRP00gBV6/zn2SJyMXlaLCMk9nOyyCAi87KiCsYTiImI
	+gcylp78YS57MG0ULC3lOPeHbQpEAL1nyzqVhF/ldjz4f4rMyEJQ5wjJxIwfXt75w61r6g0EV5v
	VRM8PF3pgV9Y5lw==
X-Received: by 2002:a05:620a:bd4:b0:939:6dee:4b09 with SMTP id af79cd13be357-93bb7963c2dmr1203599985a.51.1789659632507;
        Thu, 17 Sep 2026 08:40:32 -0700 (PDT)
X-Received: by 2002:a05:620a:bd4:b0:939:6dee:4b09 with SMTP id af79cd13be357-93bb7963c2dmr1203593985a.51.1789659631742;
        Thu, 17 Sep 2026 08:40:31 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.232])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fbd247809sm142192815e9.11.2026.09.17.08.40.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 08:40:30 -0700 (PDT)
Date: Thu, 17 Sep 2026 18:40:28 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: jic23@kernel.org, sboyd@kernel.org, dlechner@baylibre.com,
        nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de,
        gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org,
        neil.armstrong@linaro.org, sre@kernel.org, krzk@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com,
        melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com,
        ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org,
        luca.weiss@fairphone.com, konrad.dybcio@oss.qualcomm.com,
        mitltlatltl@gmail.com, krishna.kurapati@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-pm@vger.kernel.org, kernel@collabora.com,
        Jonathan Cameron <jonathan.cameron@huawei.com>,
        Andy Shevchenko <andriy.shevchenko@intel.com>
Subject: Re: [PATCH v13 05/12] spmi: Implement spmi_subdevice_alloc_and_add()
 and devm variant
Message-ID: <7yyxwhkygfqiu4wprnnnuvwbazaidtymp3ljndyy4a32gmdndf@s4nu7nkahzj4>
References: <20260721093626.96264-1-angelogioacchino.delregno@collabora.com>
 <20260721093626.96264-6-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260721093626.96264-6-angelogioacchino.delregno@collabora.com>
X-Proofpoint-ORIG-GUID: 1D_WqMp0jEir-RYGjDyWFh3fH77kHmRE
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE3MDIyMiBTYWx0ZWRfX6zTLYszE08kl
 9pXz+7aMJY1RZlxVrSN39rlcCVfyp0OvVq6MIpttDUXCTCoa0gN9nf1z7Y/E/M3/3MU5WL+luuA
 5Yo+kF0HIAJ4xacL25nLjaiq5SBeZUM=
X-Proofpoint-GUID: 1D_WqMp0jEir-RYGjDyWFh3fH77kHmRE
X-Authority-Analysis: v=2.4 cv=dOQzC+Zb c=1 sm=1 tr=0 ts=6aac09f1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=po8fGBi+ks8MzcVQGuqtFQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=i0EeH86SAAAA:8 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=QyXUC8HyAAAA:8
 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8 a=EJeNmy3Av9R5Y2qGVSAA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE3MDIyMiBTYWx0ZWRfX6MAGj1Bw3vcl
 Of5DuDFrXOXONkyVQxZ4wLVEmXbB73Ptj0U6wqOX3aFer1rWw1uEFyv6vbVBlCwykluZlvGQEHK
 RQsFGL0zsCT7oVtjPRS/+mQ2Zl9Qaj3j5qPYQxEsxz4kLK6fz51AdcouC7VHPdXdIhARaDdqWLP
 83VK9jasZhJ7wO6AhbIEJLbdSasYmx7XUYVMUgjS0hpOS41MsgQikg1PV8vce3adB3Yi32FG+Hk
 EJxl60e4ahWB5JtuYAFN7LyRt9XumervbuH1bgaQV2lysEPo7rVwk8JoCJR/+/jhvkjM94Tk/Vo
 Ze0TSmZV+ilLFX9yO0UkNO5KgSzxull15eARLRPGJ14OefPiGIAi3jbXrlIXILw9yIUfUuPxepl
 8sTZYg0gAAHPuj6RVvngCT5oXmS+n3ljCynWN1VLrYblJbq85I62hYvnXxE4XGCAXY4NO55FHTn
 8mV/aJfwx9zmT3c16gw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-17_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609170222
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_084034_783068_4EBFF538 
X-CRM114-Status: GOOD (  15.88  )
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

On 26-07-21 11:36:19, AngeloGioacchino Del Regno wrote:
> Some devices connected over the SPMI bus may be big, in the sense
> that those may be a complex of devices managed by a single chip
> over the SPMI bus, reachable through a single SID.
> 
> Add new functions aimed at managing sub-devices of a SPMI device
> spmi_subdevice_alloc_and_add() and a spmi_subdevice_remove() for
> adding a new subdevice and removing it respectively, and also
> add their devm_* variants.
> 
> The need for such functions comes from the existence of	those
> complex Power Management ICs (PMICs), which feature one or many
> sub-devices, in some cases with these being even addressable on
> the chip in form of SPMI register ranges.
> 
> Examples of those devices can be found in both Qualcomm platforms
> with their PMICs having PON, RTC, SDAM, GPIO controller, and other
> sub-devices, and in newer MediaTek platforms showing similar HW
> features and a similar layout with those also having many subdevs.
> 
> Also, instead of generally exporting symbols, export them with a
> new "SPMI" namespace: all users will have to import this namespace
> to make use of the newly introduced exports.
> 
> Reviewed-by: Jonathan Cameron <jonathan.cameron@huawei.com>
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-QRD
> Acked-by: Stephen Boyd <sboyd@kernel.org>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
