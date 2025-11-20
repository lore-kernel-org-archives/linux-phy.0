Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EC01CF857B
	for <linux-phy@archiver.kernel.org>; Thu, 20 Nov 2025 10:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lKNBWSKsJGAa4qrXXGc+cuCtaqS4A7EakADIK5qNZFE=; b=IvKlmMTPWkEVLc
	gmPIjrv9oUMDc640IxVmPKSsX3IuJqqw/CaOPJP1D8C9+iKI6xtyqbrDUF3DQqv+FjbJil9jGwRtj
	OwdYC/vo0OAvcpnoIRl1OSe3fZnO89XUFiZWi6Oh+WhrI4XHlYWMcWAK74aEOz4M39cDIJt/srQLE
	HzhkI78bgbmI/0DiNxzIZWjTgDxi3UboD9FMuI9f7KhZ+2Cmmdiz0vhzwzi9syctgvL0g7tK/GBFN
	LewjDPWeChI0c/IIZ450Tq1HjWSacT2szGSIfxN2moqnHPLqVpdNbrFLaQNgpOzuil6kx9K28Pd+U
	xHi+cn7gHc2xm3nr7LpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM2Bc-00000006X1T-3wLS;
	Thu, 20 Nov 2025 10:46:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM2Ba-00000006X0j-0mAw
	for linux-phy@lists.infradead.org;
	Thu, 20 Nov 2025 10:46:47 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AK9hRBN473505
	for <linux-phy@lists.infradead.org>; Thu, 20 Nov 2025 10:46:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Lp+724ZMakvM8pZxZghEF1kk
	SgglYIzK0fIyjyx/k9s=; b=iq5C0V0g/2B62wS9v/Jj0YFptw8v9Rt9JHdHocZg
	gMI7CjR/mupSijgCnGK1/HEPMQIvEas5Jl2mCICZzctFIp8+T+1M0hCtOE+lTEop
	YAQv6rXhCDbZ7KsIPeJfmDd3o/+ULrxYEmPimDlrTTYdvgXyOl3i2oDBb4StBz/Z
	hOuAJk+wJ5krwz9lKlWLQ6+tThD91Or+nlTAL/peTmqDxOrjYnvegBXuPxh2wBQm
	a+lQTcJlpDwLl5v9gy1g8OmzFRdi12Vd/eW0yiNw1Z68rDYmMDKFB1gIcM8gnkxU
	+wx4NxNHO3QWxVcjRpwioLjXeaKMTAZN6J242jLAq9qxjg==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aj0kw06dy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 20 Nov 2025 10:46:44 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-7c673f5f4b6so2143158a34.1
        for <linux-phy@lists.infradead.org>; Thu, 20 Nov 2025 02:46:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763635604; x=1764240404; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Lp+724ZMakvM8pZxZghEF1kkSgglYIzK0fIyjyx/k9s=;
        b=jidAa+sINIuAT8dRtjCQXMQ982Yy+Ofz0sGW6r8yyzEw4PH0DHJxof3IvWz+YsCn1D
         QF2tEvP2AepzneUUvTIWI8doGJVPeyiWrwd4Iw7RJfTPDGzGQxjSHKyCebJy5OhRNHrr
         JNZiDXWYNbpuHgfe/0cLa705J5j5TpgrBfTVLRcpoKoDXT2D+I1RNXC0MIi7+LlUtW8z
         3WDxir2Z4VH6Zh6y1dxC+V6DQJnXve9etahFadxmN5N1+BnXIZh4J7vf9CuXetiUO2fP
         brGvZAsHNmbGfCXqQqdgCyrjz7Mjt/uohWDYYvEOr3tL4VFAVqThOGPCyPE2Lm2zD/Ar
         BuuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763635604; x=1764240404;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lp+724ZMakvM8pZxZghEF1kkSgglYIzK0fIyjyx/k9s=;
        b=G9VTVNoEEYOa9FzBwMPHo8qu17tEHv/OpdP/YQTZ7Y9H2ay9yFT++Fc3DRstpJcPql
         sUmHyU4XVh26A6yeGHP+5kO+q+aJ1U+YFSF1jFDIjrSllT3T3NjAZo9JhvEvI5EZzGo3
         4NBKitnaDbuTeFPpzrXS5ggniGgoIyLl/qhGVaQGTvQvcC12pUrlWRFMPAZK9DLcx/Ds
         7U80coIADgUlhiSr5CHXo898K9OiE8tymN4wLTU5+rfDJXAcRj2M+LMn5+5hFaJVfZl9
         /tMPUUiKdtYpjBw33N5lk95caLdX442+fcCiXX/63eWV1xmY5Ji2aFAeVkN8SrhOgjWQ
         cHAw==
X-Forwarded-Encrypted: i=1; AJvYcCX80xx+gR0VnTk301mpB1O5oeDbxghpPHWZgY6JkMg0HWbPqQXj1HPT7HStRO7ZRaJBzDI5M4+cUXI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzONzIJX/OeSnuCwV3LpcoKbm0a86Uez42k6o4zxq9iEAZ9vf3D
	eMA9w9pH4+kijtU6rs6RQ5Gt31nCFgxq52g19fIG5BLnBfUWRn597A5XXrfjmrzCreSdgULIki1
	1hYZ4HBNA6P/BjrQgZivIoBZfoWldAMY41vJaA8wcYdCqGv3GvvkhKZ5oa7686FnQ9YbI
X-Gm-Gg: ASbGncurJzyrMYWugpJV6NgLu8h0iZVYLj0is538Z5gCP0VBymM8pCKEJ00h6H8mZav
	N71fL5oI+VU38r9IgIrCG04OWbGWDFyQ9rkuUTkO1qdB1xd3iDLkDuiOl7xyqvXz/iIeac0bmir
	riA15YN3enBbQrhY9ddCGFQD718AyJuCqj06www2oBgkSbBmmV6E7reFlqnt5wxXg/YwlfdWCYK
	2R6Bqcdftzo915w8krUPPSv/a/JJIFm+gU3nkzZCKKzzVpBF14uDVm4NfCr0Ky4K5sXlIyoyxxu
	0ab2PCLev7tttOj+pEyLm5VYulVP06XzEjKw0RRLpdi/Hz8N9/S3XVwR/KrYzzO2lw1/WMK0Uo/
	sbf9pAKMuys70TkkOPmqSPg8Hakn3JW4KkH9Do3xvyJxp7ytnlDaSPWqA
X-Received: by 2002:a05:6830:6112:b0:7c7:1f5:28a with SMTP id 46e09a7af769-7c78d275311mr1556719a34.12.1763635604431;
        Thu, 20 Nov 2025 02:46:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEY+qfL1NsEbK2LIjBLgVXMLq61CmQzatTIZHySSAokZ3KEahg1dA/+XpdJuLyDPLwT1FKw3g==
X-Received: by 2002:a05:6830:6112:b0:7c7:1f5:28a with SMTP id 46e09a7af769-7c78d275311mr1556706a34.12.1763635604092;
        Thu, 20 Nov 2025 02:46:44 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c78d346d84sm851828a34.13.2025.11.20.02.46.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 02:46:43 -0800 (PST)
Date: Thu, 20 Nov 2025 02:46:41 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>
Subject: Re: [PATCH v6 0/3] Add support for Glymur PCIe Gen5 x4
Message-ID: <aR7xkSWWLoGX1HYn@hu-qianyu-lv.qualcomm.com>
References: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
 <aRyoo2Ve_hjgc84M@vaman>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aRyoo2Ve_hjgc84M@vaman>
X-Authority-Analysis: v=2.4 cv=WeUBqkhX c=1 sm=1 tr=0 ts=691ef195 cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=HY-MMhiuUmRCiokpfk8A:9 a=CjuIK1q_8ugA:10 a=EyFUmsFV_t8cxB2kMr4A:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: lSWNaPtrmgvCo9Nha0pqBTZRBILe1aFr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDA2NiBTYWx0ZWRfXzV6ndOIX8dmZ
 9vYWwN9jlkSxUQX4eR7LtWGx81+eGmlLxGTaSHjgoZusd62UCk/aQSBazF2RqoibnGMccKMyl0p
 +ArQV7JShEnZYBe74b+w2GwcsqZ7NJIH21f8Ljacgjs2VHbJnvMuaE+dD67xRqufZxdddqECg32
 7hwTJqytxq1meo54/SVTGuw3sasKXpvRyhdKt9G4qa2oy9Qq9AauFMkChjU2/RWJoXx0/dt6rNi
 Bml4azpEn26qopiXBWIuyDzud/CvFMf3sfuIhB+H++o+G+XOSRRayZBqZEYHeimXHEmdd3tiwZV
 fYXXMuy9T5Bg8AEFk7etFPK4mfCno3WQUK6PmN/fn9q1I/1n6WNzrRh/earY3l//SnpzUgsZIhv
 LVc+Kxb3Bb4QsQRnJUWe+DK+zXJBBg==
X-Proofpoint-ORIG-GUID: lSWNaPtrmgvCo9Nha0pqBTZRBILe1aFr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_03,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 clxscore=1015 suspectscore=0 spamscore=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511200066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_024646_337780_6557DDA1 
X-CRM114-Status: GOOD (  17.61  )
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

On Tue, Nov 18, 2025 at 10:40:59PM +0530, Vinod Koul wrote:
> On 03-11-25, 23:56, Qiang Yu wrote:
> > Glymur is the next generation compute SoC of Qualcomm. This patch series
> > aims to add support for the fourth, fifth and sixth PCIe instance on it.
> > The fifth PCIe instance on Glymur has a Gen5 4-lane PHY and fourth, fifth
> > and sixth PCIe instance have a Gen5 2-lane PHY.
> > 
> > The device tree changes and whatever driver patches that are not part of
> > this patch series will be posted separately after official announcement of
> > the SOC.
> 
> Please rebase on phy/next, this does not apply for me

Hi Vinod

This patch serie depends on
https://lore.kernel.org/all/20251017045919.34599-2-krzysztof.kozlowski@linaro.org/

Can you please review and apply above patch first.

- Qiang Yu
> 
> -- 
> ~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
