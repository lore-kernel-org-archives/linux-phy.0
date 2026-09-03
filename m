Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5582C624DB
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 15:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3sPD3AZ42RFqCHZkzXKiCTHfKCDEQNblLlGLLzXELj4=; b=oH5roC8D22UsEc
	SYPCebp0v5ttTjPWs1kAKBlG8HISJlUPKjthvZT56wcOv1WYdz8Fz4bZotQRDU21yUyW6VX6jn9wG
	nQaQKgCBlmMBpDuVnl2kZ/rdh22T0R8jbUjczE0mG4K+7N6TqrRdoqptpVKVdAo/1ynmF3Jbd31x1
	P1XBKvjdw5FADgwtD356TMc3nd6KC4ryLJ4EgKk3peEfonRsQFlDOeFPd/7WieqswppzD7PYCGvvE
	pBGyUhCvrQTx5zFUmMcbU5umm4w69vr5fbG7Kw9uPiKHrj3ZdJuVk362eSCveR8IY4aoOL9pihlbi
	sDYB9V5gbB80p/dm3uHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28wX-0000000HZam-1ko7;
	Thu, 03 Sep 2026 15:01:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28wU-0000000HZaS-2l9v
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 15:01:31 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 683DAPx7035536
	for <linux-phy@lists.infradead.org>; Thu, 3 Sep 2026 15:01:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4U04Gmj8MHmOKgzajdN/vYqN
	FcXfl6+LBbOXXMjsXhg=; b=U627fj959Kh6nJQKhcOV4OQjhCyTFkqGwcMCDz7V
	u6RIVKNgeEXL8dBP5tYHele1OiO9Add94ybQaeNtPMhpNYAMA7SeE2/YIP2wLXtE
	C5YErqpa2crw/qtPuvL55NTCdRHKrjv1llRu6JjMSkldmcHrVx9JZbQ4ufIuUBJs
	tUAiIpwiAMO9NaYhNichZ36IWvyiOO8gcRJ1+PfZuVHCCtCMA+EckHKhXD152ys4
	YhxqF5c16fwgY5il2knM8OCvPXaY8xC5ZFSUg98zoZN38uUZP5LwBcmSsCaxasQh
	WOFeIxmJILlqpCnP+fHc0HlHRYeXz6HgLXxWmgheajeScA==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gf51m1pyp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 15:01:28 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-97e98448895so3605241.0
        for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 08:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788447687; x=1789052487; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=4U04Gmj8MHmOKgzajdN/vYqNFcXfl6+LBbOXXMjsXhg=;
        b=bnn5901G3FY3AeUWdjmMyUpCjE96fuFOSGGohONTYVcvIC9HCQawts6+tySCsBmPzM
         Qn2g8IC0Kq1thzxHzDcCLzHUwAHYv2FwIEbZbV0pcDePaOPxRiAscdN4CBO6sFZEHoXt
         f++N33hLr0evECtjZtAUwt4H8u7UiiGMuiHxH0xPAqO45qclxTv5wp9AZeTrv9X3FL5U
         +Tl0eSoW/sF6BzRn547DFvT8NMf0BBep79o1p+PJKQcCxJZ1M1q4r9xebGLavT4PiO0q
         5ZG6T07JJ/MkYPlOfj6wQFFoMF8ff3gbrdQDATU38gt4JqZh8qykLMfFbfftSE/HwflT
         jlqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788447687; x=1789052487;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4U04Gmj8MHmOKgzajdN/vYqNFcXfl6+LBbOXXMjsXhg=;
        b=WRhJchHK8Y1qrqf462r3xz81VURDgeOdR5T8bYLaTFlXnUJ8XAoE2TADiHxC6rrkTm
         mdm/h+oTMdXYJyZ7NayFfSu4joNQjYjNA+mYn2JFVOxEfPDhZll0/Lw/99hmAWg/N3cI
         pmojK+w0JqiCqKDVTlrkMmVpb+AjbDDbTy65tR6BPMxIH1FIiX9g4INu5wGv1MzoznRF
         rSOXAie4gKCFn57ixuCJ6V8mBnF9238l0DStaRGdKPXLhC8y8WvyrnpXof6tpBpmvoqr
         0/tDn2YZkYFS8PuuCUQhiLP0ZBrWRTxDUOrtr7N2h8w5gTKIuBLQCy/bF0/it5aFD2aV
         +o/A==
X-Forwarded-Encrypted: i=1; AKwUvBxwcUEFbEZIAQeU+yOT3WaVUCb/75Lp9TUoIaktTL9EXGCBtUDD6qwxJaH2qC7LgUZ1ehNYprOq/Yw=@lists.infradead.org
X-Gm-Message-State: AFuF++l/yJC9rZUzll7ffuf1Tc7Lmh8skGjdiIrz6KYH4zKHWf6+k33h
	PsU0oCLBWQFSp0eUOKEeE/Bmc5a7E/lIdlCVG7txTpI+2aliDLlUkkI+cKOoBjenf+7JJFJQ9CH
	0bj3Xwj7+HriAzymWDvmWpRYBL/9FXqjMZ3wTGd03Kxt62fWJFvExaU5/NS6N4BHYAcYq
X-Gm-Gg: AYBFou0+bLZNuBaWDwwWs9l2oequycOP+NhMeIKqIDXjbtWSCON4Qzj0Da+mTycJS3f
	SwfG/BvFwd6gP5uXs92FwwJQCJk/+X0HAr+DK4U4NC2nFzu+jOElAhqX0IQf4yKeSrnqAAmEtoL
	JrwG7ygxKAmSvId7o3Ekh+JlG4ov8/vMeqtateA+xlwUpSkvLho+vtmzjrRHRq+tV5Cr1JpGFIl
	4s2OETUL2YrzoX7qVDJkKL+sp800cIvqqSmBAA5KjJf/WXXTceudTaqBpUthdyE0bqFubpPrkSW
	DwqJiVoi5ssc/yLPQ7l9k7rTx4yXQlAOjvbBL9k4gz6LviFmK9P8KMs+B28X7oJq8qwcfm2wghe
	qUdqKPLQ/zjCCtQ==
X-Received: by 2002:a05:6102:3fa1:b0:77a:2268:9fdb with SMTP id ada2fe7eead31-78a1f23df59mr3868108137.7.1788447687293;
        Thu, 03 Sep 2026 08:01:27 -0700 (PDT)
X-Received: by 2002:a05:6102:3fa1:b0:77a:2268:9fdb with SMTP id ada2fe7eead31-78a1f23df59mr3868060137.7.1788447686604;
        Thu, 03 Sep 2026 08:01:26 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cee60d9c6sm79144745e9.11.2026.09.03.08.01.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2026 08:01:25 -0700 (PDT)
Date: Thu, 3 Sep 2026 18:01:23 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Iskren Chernev <me@iskren.info>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: sm6125: Fix QUSB2 compatible
Message-ID: <isf7ngdhk2iffcs2oallgrpdjfoiaen2htjneu3f7zms2a3agm@zz2nz33w27lk>
References: <20260903-topic-8996_61x5_qusb2phy-v2-0-4c3f980a4560@oss.qualcomm.com>
 <20260903-topic-8996_61x5_qusb2phy-v2-5-4c3f980a4560@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260903-topic-8996_61x5_qusb2phy-v2-5-4c3f980a4560@oss.qualcomm.com>
X-Proofpoint-GUID: Iy1l6N0u_vktji7KJ9YWTuT_0AYIIXYp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAzMDEzMCBTYWx0ZWRfXyuXKbky3zEpB
 /mEx/0qQS5KqwBKvYJ5TTRpu+mw28yrg8L9NQXA/7NVbf70F8w7+eHHvfYcmmkEhO8IylUhD/+o
 eZxxsTwT0pN6dC93rR3o2ZkNFNJo6Rp/j/iej5XNORzE7LHRf9za7Hxjfvzf/iwRsCv17MZoRjB
 yJIiZ07V6A8LPC9hwFVealpKoT/99XWB66Vi0OgDRY2PIicDmx1PoGImZUa6fb8K0KoOJbfXB7T
 b/5dbwhW+aYI04NXIfy15ELi8645LH5dJu2NsVkcID7ny1/pHqAH0sA+7ZVBu6NvMW/IzyWpWT1
 FSpoagObLs9tcbMa645s4g0fuOcDfD7njXRsED0K7TXH8U6Rla8tAqCGGXIQbLZcJnShK5djgJz
 g7q8kEmx6/6XKfRdJWZcxrcLCQHc62rCtoOQ/BfIcxtZGbDDO9WMIUsXj4+j/RX1hOiAf6Z/qOB
 VlGlU30O0oblH6xLj9A==
X-Authority-Analysis: v=2.4 cv=X8Ji7mTe c=1 sm=1 tr=0 ts=6a998bc8 cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=q7XEBjOi5DRkXzmV0jSBjQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=LZHrLB2tbJw_R4RbR5EA:9 a=CjuIK1q_8ugA:10
 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAzMDEzMCBTYWx0ZWRfX/rO0vhhKx071
 VMVwNAAAIprARHUaTcJxpfc3KyJp8AWMuxIHvpGcp/VLPJ70qRRtay+jTuDvQ0/858XR2a68qux
 T+AoAgt+0ouDEWN0fmEzqQhJnkMYO/Q=
X-Proofpoint-ORIG-GUID: Iy1l6N0u_vktji7KJ9YWTuT_0AYIIXYp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-03_04,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609030130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_080130_724776_AEAA61A8 
X-CRM114-Status: GOOD (  13.48  )
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

On 26-09-03 16:25:32, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> There are a couple issues with the current description:
> 
> 1) The msm8996 compatible is wholly reused, without a SM6125-specific
>    primary compatible
> 2) MSM8996 has a different power setup (VDD powered through a RPMPD
>    power-domain vs a regulator)
> 3) MSM8996 uses a different init sequence
> 
> As part of fixing all of them, use a SM6125-specific compatible with a
> SM6115 fallback.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
