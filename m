Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F21E4C55ABF
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 12:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cGgIYyXEYE/IavkovnS5v1WWdsOh9XgSrcdtqQnoZoo=; b=iCxUqVx7Ujosmw
	isXCybnxHIFmnLBU5z7Cdt1MemhwIQ82ckXjbGvMWUYAVlrrEp0eqPxAcf9b2m6BL6HESu4ktMuUy
	rRSNMfUtOcQbgQN9D8hY0mo10+P0FHAvDKjKB+9GH4jUr94RcbOY4YfeBkjnCyn82yWCl8pF8sMny
	G2eYJWz8+yJG+1e7M9yngxpBGuOBj4mE8/0/iWVMYA4D4BmCRBOM3f0YESmN+/SF4Zz+RpnmRenQa
	D6cWLL9K28iKDYfVBly/9LD0h8SMFOZ2t4rvPR91ZdscyTxVbzH1tSftyeRFwGmJ90BU87URSDUnx
	tDAvsEa99MSi6aLumOxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrwxc-00000005jY7-2q9P;
	Thu, 06 Aug 2026 12:12:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrwxa-00000005jXG-1I2h
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 12:12:31 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6769nkV5865666
	for <linux-phy@lists.infradead.org>; Thu, 6 Aug 2026 12:12:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mdapPG7MX35qhwIzJhhRhi4k
	JAxz+b53jaaEzU9Cz2U=; b=jm288J7tfduQQO6gE0n2KsaId51ANZg3o7dmE9PY
	sB7oIfjpVpJKDdoEcaQIv9CYIoUB5TCBURdZFhKrcXmno2vmu+ZAJGA675sVRIH6
	9Ne0BT3Hyrow1IGH3Hv3FVMWrFt+0KqDi6fpM6RtrocS/UvXe3u1/sxKIXt+GJrc
	ZtOUJTFRWejA4/3dCpK4xeXmWQI7V8zpS8ukus3NnqSnt3UVbyqPbeZ+VfKe/QlQ
	nCH6c0NnitQNaCwejPoa48SnrwBydUoeCnStQc6uW1FB/aLwPOLgDcuyEe+DaDu9
	ztbdv6QMKExSDi6UqLGdBss7UPeaTo8ycunLmf3o5XW5ew==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fv9f5c597-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 06 Aug 2026 12:12:28 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-cbe77d6864dso2103790a12.2
        for <linux-phy@lists.infradead.org>; Thu, 06 Aug 2026 05:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786018348; x=1786623148; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=mdapPG7MX35qhwIzJhhRhi4kJAxz+b53jaaEzU9Cz2U=;
        b=cEYGs4juxJ1s3Ow+ig2E0VnUY6QSWuOvMfOzDhPW6qo+UF0C7KYvFNdeNk/NKZ6xJK
         EOGe4HlBVd2i+lTqqziwAsLB20g5MbtFfaouDOtbU700ozxT7VIbQy6lE0XV8depcAr+
         yfuMAbRXgFd4Q78/l5KRmWZIuBvXLeCXtIvChs60s/aTUBmFUsK7p2+g5q0YSgdF5lgK
         2IiXWZF36u8hwcUSjD7kaeU2FRdS15iOFti+vr7XvWRBaMCF9Y+M4fmbv1kvbPV/pNdY
         v19rWQoEh+/mVH9zWDqCbzNzqLLiJR9hne6fJC9oNg5q9KMnCP4Kzit5nxQ0Fk12fOto
         e4qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786018348; x=1786623148;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mdapPG7MX35qhwIzJhhRhi4kJAxz+b53jaaEzU9Cz2U=;
        b=HrAYKKbhYtQ3AS49SKIuT5EFyV977MH4OESzTSZfM/zx918wmNd+dASOgF/wy3j9YW
         cKchmwZ/lAnsQXZJi88t4ITiDkreyHSBEa+54EBNsnXoprMyujOxPk31ZO0Hl1YdYJ+v
         eRK7/KGFSlX1QUdybIbhS9xfFp1fgEY8pAwl1zI8leizvNdGqqoAbkJdZJGuZ5lNRptV
         7jLLIhgGR1ruPbJpwhS2lASuDFXDMaCi3fhdhiCka/OBxW/7SCqikTuAjo9zva/Ak15Y
         5IiY+qcpBot0pMZOOSSffWVu9hr7CnpMYn1GyYOmqi1JDFv1J2llB+vqUtA6CZJw2qOg
         Bo7A==
X-Forwarded-Encrypted: i=1; AHgh+RqwS6iR8Qg892puuJriQ45P8xQwIr1X46YmEPuPx01FFgD9OnIoDGiROwpv/BWxnA4Q9az+X0U9ac0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3/URy2ieimtCRNbWPfCYIJGp5SnNsx/cTrgobgAfig1cDNTxw
	p+sypeciwM7A+QqeOJatFvrpRHmCnEGHe9ItN1TKHAxe+bzKQTYPh/T/ZG5Hv3FN5caRBvWlwlt
	uguA59TWD12tA8v6YUKFQYAL9bdD62qMXOZLTy+Ms2BmRQBklAEpHNzK4c7t8oFj/hcjF
X-Gm-Gg: AR+sD12yU16O1f7QjZ6KdpyCJSZaMo3MRF/SwVHli3OrbmRfs/TSPxdUJqeZLQKmVYH
	Hy0r0KJRz9QODxq/RHww/dPeSeUmPLbFN7gqyrIG/YfRXDnmllMEM/u5aemj1uAM5FHIVEaBfxG
	uvd5A/aO0OJ4Q8mVkDno7T1tuX5JvAkVa7Xu4b74+Rg4X5eFr6fue61Nwu9319uZ9RSwrLtgZrC
	eM3hymZSvMhI7Qlz1mQbVFrUbOrec3p+/SLS0OJOsy2AzjMHB2VUj14nnRNzJdZYVYf+68AHrvj
	0Jy3OX1SwEF2GJMoW9KAiRTXDygpjC7vDq12sisX2C/Iy8F9Io6tsXh15H/Xx2RYJ+V6GBodSt2
	QzcqqWOeUyDEPJb3QbdiS+JB5nMs=
X-Received: by 2002:a05:6a20:430b:b0:3c4:396d:4a6c with SMTP id adf61e73a8af0-3cb85dcaf9emr17702744637.5.1786018348197;
        Thu, 06 Aug 2026 05:12:28 -0700 (PDT)
X-Received: by 2002:a05:6a20:430b:b0:3c4:396d:4a6c with SMTP id adf61e73a8af0-3cb85dcaf9emr17702669637.5.1786018347772;
        Thu, 06 Aug 2026 05:12:27 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-315863fd2b3sm29733045eec.7.2026.08.06.05.12.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2026 05:12:27 -0700 (PDT)
Date: Thu, 6 Aug 2026 17:42:19 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v4 3/4] dt-bindings: usb: qcom,snps-dwc3: Add Hawi
 compatible
Message-ID: <20260806121219.oydkvnfpbfjkktsj@hu-mojha-hyd.qualcomm.com>
References: <20260803091441.3040830-1-mukesh.ojha@oss.qualcomm.com>
 <20260803091441.3040830-4-mukesh.ojha@oss.qualcomm.com>
 <anReh4gzTjkD4u7c@vaman>
 <notmuch-sha1-a1b83c8fdeaa6e5292b72468415a18abf11af9bd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <notmuch-sha1-a1b83c8fdeaa6e5292b72468415a18abf11af9bd>
X-Proofpoint-GUID: vZESlL8qQHPyGbzwPQzDpCJEcFIlGfRL
X-Proofpoint-ORIG-GUID: vZESlL8qQHPyGbzwPQzDpCJEcFIlGfRL
X-Proofpoint-Spam-Info: AW1haW4tMjYwODA2MDA5NiBTYWx0ZWRfX9Zc94Hmma8p4
 1RJlzKsme4HsViXLdqzZhety7xBCgAb5BLUOgThnYhSxz6J9nRXKeuHsOstv1OoinDW/FCDrJ8B
 8PooiM/O2i4twr7P+ZVCNfNODWViheU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODA2MDA5NiBTYWx0ZWRfXweGqnvFAI4R5
 GauF6ClwW/KtAnX6bRQL2eegAeaxul54m8Klbuauj/cghSPRGyRA2cp8xeZOQczfycC2tlYrtIK
 NNeB4QP3fM8aDjcQght2MnAeY0RAtkbkmncsOuaFkPSEQOY+SsCWR3R0eewwHzPaYXR7vMyIIjv
 VVR2wJMAAU9hlAeYDKuBLQUWgzoWg7ea29yHdt1TyiY1r8Y/MWsoX+JXCLVvedYLDvXW8fAK4q+
 1eGppaMaLe/yZHLRT1elix9NSYLU4Qq0MMKzqwTOcmIvuqMKJX+/pYz2w3fiI4oPz2BwWOvdZP9
 RN4i5zUTskq+Akn/0IQqK/MOnpPDFGt5Pi0BxMQU9Cf7Qg+RISHr1qKQJENJrmcxwqlKTdl0JgM
 JzdXDLg62KGcj8DIi/mHTdASx/3rZ5YXh8r/qiGVXsJyiR6LDMNdKsl4FqG6bfa3JZ4lmd0yqNR
 DrlOioxSArfnvrsMV4A==
X-Authority-Analysis: v=2.4 cv=d4bFDxjE c=1 sm=1 tr=0 ts=6a747a2c cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=dfNa0yi7GIg5s3L2rkMA:9 a=CjuIK1q_8ugA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-05_06,2026-08-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0
 suspectscore=0 clxscore=1015 impostorscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608060096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_051230_357497_BE3F0328 
X-CRM114-Status: GOOD (  13.76  )
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

On Thu, Aug 06, 2026 at 05:10:01PM +0530, Mukesh Ojha wrote:
> On Thu, Aug 06, 2026 at 03:44:31PM +0530, Vinod Koul wrote:
> > On 03-08-26, 14:44, Mukesh Ojha wrote:
> > > From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> > > 
> > > Document the Synopsys DWC3 USB controller found on the Hawi platform.
> > 
> > This one fails on phy/next :-(
> >
>

3/4 is not applying because it is based on linux-next and some patches
missing on phy/next.

This series applies cleanly on linux-next., what should be best to do
here., shall I send it phy/next ?

-- 
-Mukesh Ojha

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
