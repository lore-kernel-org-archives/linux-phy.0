Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8422AC5AD49
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 12:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ph5q/KlFfx5cnsWplE+pke9uturVNE6YS5V39EZheQ=; b=W+ADHRQFqtMTbl
	6bnkQNGInj0ZEpLR2GIl5IKT/7oQuVZpmFUXTnvvpV7Ut4m68HSP4d6VBk1bImS42tgDw+Dp57HbV
	Q/qnFgrWuj3tRQcfSi+ROTKLHOpOb7lgkuM0gRvWH6a31ELmf6QsdkUO1J3HVzgrJU5ImJg1y89IU
	RDZcoMQ7gL++eeduQ5LXUnUtn03kEv7biRR/fORIaYoVMyCyDgGCwfbljJtoJX/yRPGWfzKxqclT5
	2KuFMT47AeJsw/pPfGytFQMzYgk2jHRYiRcL0sAuvjevTqWi5diY5XcVbH81qrAVV6rinkWpHPzvH
	q01a5Vs6IBBBzhAUo1gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKG5m-0000000D91O-0nuP;
	Wed, 28 May 2025 12:41:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKG1c-0000000D8H8-2LMm
	for linux-phy@lists.infradead.org;
	Wed, 28 May 2025 12:36:53 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54SAi2Ym023637
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 12:36:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7iqoOFkOMxkEavyQAIIyueEL
	JpmJHfQksJO2ArqPxus=; b=Rk8R8F3Lq2mtJAmhJRQBtrdU0JLCp4axi2aLgC+I
	pYOVcYfwRVTlgWlBmsVE14GqMqLi0QPjXuurSztCbJ8l+MU6AqDkuLtyWceH1aFM
	4v/e2HuVvv4KybkMOpREmsRksz9mc8M40fqpjmEk95KGSu6nPmkWYzs6Vf3jsZp5
	bwlERrY3LH0hsfewE2KQ0azk3M2PEzQkRdAu2wgUeMTAPyG9dE9FcXToOIVsC+sn
	216W9qqxk2OzUEYTsVmHujXf5TYZRBhyLnj2+e3S8NDA2shMiTms1nPMF8/9bLcq
	tvMRIQL781CG387gzCGkiPh5jmi3OfRCa2GhvJoK7R1z1g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u79pa7yg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 12:36:51 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5b9333642so485002785a.3
        for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 05:36:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748435810; x=1749040610;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7iqoOFkOMxkEavyQAIIyueELJpmJHfQksJO2ArqPxus=;
        b=Q6GmRUrcquqszHVCKm8ZDCmo1Y+b6nTs534y5Q4Xs2DD0cJP/EH4FZ4HP7IWUKCohD
         PegaOien0ZAX58RadfVwE53x3sHDFYrXuIpkfckWnFbSn2CvuQw5oUKsNs4avhO/j9GF
         +cuwGzQpwica8waM+xbOwa2hPm7qSZCYQF44Kw8w3kADVd72eI36eUtdEDDPblsKJMO7
         kwVEoQQO6ZJRXx9VqU69feiqMhCMme6A+1vzLgqxWzZHdINKuTyWUY71j8/Xr7jG/QpK
         ycZAvukvJNQFRA85XA6jkDvo7NyjGWd2FxSXEi0H1b+VdZcCR3OoetPK4zAygKaisIs4
         Nr/A==
X-Forwarded-Encrypted: i=1; AJvYcCU8pOHRA97kaVOuH8YNSHseILAi9FqyNyThEKlB/kcl+GFfZ4ssSdFbRrNm3dIzhMnFmaFS+ljoc70=@lists.infradead.org
X-Gm-Message-State: AOJu0YwOj1EG8Btd8H1sITAqIHDINmSGUycP+Y1WaoehOGqH5vzVWKi3
	aVI0WfgTy8CAzzGzUtIqVFFieck4+DARwlptzg0uVl9G7CuwbWtxz2dIYAx1cD5GccXhISACi1X
	am28pMAelc3haeqgTJcQ7xhAkq2hgJ0L6AkBnwaSW2E+LDjMnpryGE8cfOhf6AOWC+Xzk
X-Gm-Gg: ASbGnctNtCYQbH1olstm0H+cjABASduggYI8f3wA4ldjFX5YnwzwOwYymlnlYgbfiVE
	T4BM9UoVHP9Sw8TncXAcbgAFXV3QPxhCfobITdc+2ijqmrcNV5NKo0vjEnIR2izCGiyP0Tqsv4d
	DgEb4Wjv6kL6N6sgz0tm4v/uCqhghOEbe0FUBX6gv0uUM8B9tqFm+bxyVkxJ40h/GykzR9qgktr
	8fH0JYbWP1Bp9P8e5U2gUozwiAu4Yrr7KpWJmnI8JEV33joBh5J8BKu2zqngVMeYnlwahYfjxib
	O8fWr3afWjdAzBtyCpsj2yKW/lr7h6YMKD97d2qlKk5iSALCVm2yg9k0mB9WzEQ9ppJ0CIE/WWo
	=
X-Received: by 2002:a05:620a:3194:b0:7c5:9c12:fc8 with SMTP id af79cd13be357-7ceecbe06b6mr2326086585a.38.1748435810292;
        Wed, 28 May 2025 05:36:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHmzZ3O9RWYNfqsDI1F+HWtAjiLwMglKlUfuv0dBseFqNB1H4SfpNa0Y/qcbFGi1IyFZlepfA==
X-Received: by 2002:a05:620a:3194:b0:7c5:9c12:fc8 with SMTP id af79cd13be357-7ceecbe06b6mr2326082685a.38.1748435809851;
        Wed, 28 May 2025 05:36:49 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32a79eb954dsm2287631fa.42.2025.05.28.05.36.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 05:36:48 -0700 (PDT)
Date: Wed, 28 May 2025 15:36:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Melody Olvera <melody.olvera@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 04/10] phy: qcom: qmp-combo: Add new PHY sequences for
 SM8750
Message-ID: <dnvjpirgqahdlt3kxcpyhooaovpqnoobetnt3b6q6fzsrsnewr@p4smaofzf4qp>
References: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
 <20250527-sm8750_usb_master-v6-4-d58de3b41d34@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250527-sm8750_usb_master-v6-4-d58de3b41d34@oss.qualcomm.com>
X-Proofpoint-GUID: x5IQ_1xY8Wm65BAL4hKHtIoLJIKkoaSf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDExMCBTYWx0ZWRfX7Urr7Clh2xfi
 eHNMo73T8/EW0vdphLfVTx3Qtzn1jUCXlFelKbp46D7PtgCNIqT56oM3ACJNlG6QtJNQdpYWqYy
 PaayBSKsfpaEqCKWDXyFgq65o31pkFTS2TZPmQ76B/oPYQ9q0afWyf26Ut7O4t3yaYgn9jwG9aF
 EAJkKa2vDRSPj1SM3ZqNls8riFaxdf+BmXmq2E6rB7PBVEvnDeWLeCe9ZWi8HtTeTzFgmR08GIo
 A7QzUN69ZY7UDvuhswjumyOMoL4hCl2i7BqofPKaRa65QS6BF0UIKVydbiPjxMnB41oeJbHzeBU
 BjtTi1PiDP1tfG+emACvpX/Bj8eYdpgZh78jSbbv61Z/Og0daAQPvyVkcUxynvOyq5Vt5tHFxqj
 8xx+IetsDwkNqzvQtsN4RyueFQPrIm3fPJnt6cPOvKBya/uHZKEsNj3+cvSQF+04JAZ2vhVJ
X-Authority-Analysis: v=2.4 cv=HNnDFptv c=1 sm=1 tr=0 ts=68370363 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=9yGODh8E-QI5J-fucZYA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: x5IQ_1xY8Wm65BAL4hKHtIoLJIKkoaSf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_06,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 mlxlogscore=876 phishscore=0 mlxscore=0 spamscore=0
 bulkscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505280110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_053652_613360_BB236DEB 
X-CRM114-Status: GOOD (  15.19  )
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

On Tue, May 27, 2025 at 02:04:40PM -0700, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> Add new register offsets and PHY values for SM8750. Some of the previous
> definitions can be leveraged from older PHY versions as offsets within
> registers have not changed. This also adds the required PHY sequence that
> is recommended after running hardware characterization.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 221 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v8.h     |  38 ++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8.h         |  32 +++
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h |  64 ++++++
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v8.h    |  68 +++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |   5 +
>  6 files changed, 428 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
