Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A157BCAC5A5
	for <linux-phy@archiver.kernel.org>; Sat, 20 Sep 2025 15:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rssLoYMn3PGy9JjXshR3Znv55u+nNo9yZsoGZhCORtk=; b=MmhAjoyRlnw47P
	KvEpWnWQjARwDBtbKGNSaswil0bfQ4E5v+Sddc6jp9PzShUTRNygS4T/2ocxLeRUccRLs+Wg51150
	FbXO8BK+OD1H25MWOfhIqtDgXh2W5QctX6rVOLKp3hVqGVIXrXPgMt84kgx6qFDLphQ/1YfwO/Ghw
	KX8P9khRTXsckpJyAkCx6Y+AzyBUDIrGF0fYs4udWRMta6lQF9VWqYlZ3apwqhR/uvxTKd76UBnBo
	kqeiNktEwXMU2EeeBMqQnvP29c8kGE+pYYdBj4/qcY957k+fpXoLsQyFt7AtPV/Q4c61SUQASB3Ej
	UQ8ZSeALWCxgZGEefatw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzzVz-00000005XKA-1MCi;
	Sat, 20 Sep 2025 15:28:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzzVx-00000005XJl-0jlP
	for linux-phy@lists.infradead.org;
	Sat, 20 Sep 2025 15:28:42 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3kWJl005846
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 15:28:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EdXXPQvg8zqZCB98GzJoeagW
	GyqEl3pkoBjW0+Eu99s=; b=ehB3Rpr/9nEP6BK5BIrTZQ+WGhrLc3l8s833FM0Q
	NjCBkw0NWhCOkTf1JBmpLIOvWtFBeQNWlDcd+vuQFLmLlkkXhqO7ENQAZ3Piz7+q
	80J4EATxd4rrlc87IK583/hvLdDEmQI9SHgIkeL+Tf3Y/ea0Gi4vh5SZ2UTkzyRf
	hQGrWJOzBvLBJEdK3v2mFMHJcIaTi6xIzeZrAc8paqWKAyhgWOcCgQ1KJnej8vNz
	JBF8B+vkjMDUso8RQ6iv4ekq6DkDeJ7OJVWgke6qE6+NrN8sQj2C3X+nlg+WaRRy
	ma1Xdn+yGBLq/JFDhq3+eR7jefxnqtBRZD3Gd39ePglfXg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499mn78vgc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 15:28:40 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b5eb7b2c05so67268811cf.0
        for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 08:28:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758382119; x=1758986919;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EdXXPQvg8zqZCB98GzJoeagWGyqEl3pkoBjW0+Eu99s=;
        b=H+6fVdQlO4LIC8aI6Gc6JP556YBYhkvhss87PbXu/YoUq9e8+n6VluMzd0NFajNBSG
         pw6gQ2g9kV5HcsAkTBxEkYrMufp+jMCXBAW8UOgH8h7OUtORon9ch5dy2BERk9R37H7g
         q37NmCYX3r/vIKxETRgNqZi+eDCazo9CW91qKwklHhTbpWdx1HXTG0PYq8I76hecj+Nz
         tDcN1IT3/Crmn25heK9hlE1T5wrvjMdpE77bnAYnsJ22R+QEG+4MHQnRXBsSwliygoKg
         2AzW6Jz5jZJPYXfEUB1436exuFFqvK9xzO3TD2JvIzny0mUok86iS2uIc218h9CMm+w0
         CWww==
X-Forwarded-Encrypted: i=1; AJvYcCWcjEiFZloGrI5d8mqU5IVy+ySb398QcfbIuxMNszK4OAUlyJijx7oYzbwmXPDg67Y2gs4QWLMBxl8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxyfH7iKBSWGayyBBDiL++pXrUEt5v4OqSkk0it2r7grOTltL+U
	5xr7L2QarvI9tJcRQukm8+KdgS1a0lWy6NUU0/yhvoRNs7/WJhwNmpE6m/hdsDZNn43rVAmA+7D
	a+Va49MvQKZyDvQoXlrZi6UpYjb6GXds8+AieOMS5hMxSBa36e4ZJHWG4O+f+14T+t9ml
X-Gm-Gg: ASbGncumKMjCUjin4EFaDHU8h/5GEKdblbxOv7W3CmE9j9K9zYeFvD2NJjEFmK+GFny
	MpdKVG2/AbwhwuUcNfQPeJUuK69zAdbHHxTu7eCxQa13Hzems4sunzKY4ug0m34m+9Qkn6p2pMB
	03HhgNydFL8utKCXviqKbZpMbOlnUwISwictwy8meXY1uxjhnj9KfsQBbJ4VYWss8R+l9MtWaNL
	fYhmV2TiH5uy2Oe34G2V47R+zdi0NRVN2vssz8QvThckph7BYJOxfOEsG+AENkhy4Jate2Lk6x2
	f5NpKPYwWLrgug18tqBKtIGqQu3eXxLKtlNNJzPmModbLiR8m0tOtOSl2VsRaUZfr0aW4c3JSN/
	CetmYmC0snp80WlgeKfgn776Hc4LAvUw2Fpt0K8PkeqTnYmsHq3xe
X-Received: by 2002:a05:622a:4c9:b0:4b7:9c8d:1bab with SMTP id d75a77b69052e-4c0707a770cmr68026801cf.20.1758382118982;
        Sat, 20 Sep 2025 08:28:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+GPIhiPGXPqgJWbEBTsRikkIInjv9j9qp3bfqE/zhraGDQEZi6oZt/op8Qsh7YXTkasO13g==
X-Received: by 2002:a05:622a:4c9:b0:4b7:9c8d:1bab with SMTP id d75a77b69052e-4c0707a770cmr68026511cf.20.1758382118421;
        Sat, 20 Sep 2025 08:28:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57bef64ecf1sm247359e87.126.2025.09.20.08.28.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 08:28:37 -0700 (PDT)
Date: Sat, 20 Sep 2025 18:28:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Elson Roy Serrao <quic_eserrao@quicinc.com>
Subject: Re: [PATCH 5/9] phy: qualcomm: Update the QMP clamp register for V6
Message-ID: <mbei72eoq4vss4enwfp2c74756xdhyvd7bwfomgehm4fneardc@dgmofkbof3ie>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-6-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250920032108.242643-6-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzMyBTYWx0ZWRfX9L4iYNIPW4YZ
 2nXWcvxXBP8S7M/8XrDOjIUC0QZLrtrMZ1LoH8FdgOXBYnb68tx3NRyIMJJt7jA9neKtsgflYuJ
 aoCzNxeee6HjUkjVfh0gv4JZVqCYorymrqhmhbcO/GLXO9cNfVTw7SvuZDFpjdFC0bXOwCVyYqX
 PYmQmBs/TXJT8fnc4BmzKWytD3w26vG81OC9fc8YBOG+5euyVxxmeO6GAheS3eRSM46/W5Goo+v
 PwKB/fzClsbg9tDYPV/FzlnnO/uVksKpSD1E+2SybGHWo/Ixq9JEPO4m84uwWeR3hAeUBQ0z90n
 x+qNRUjv3fHM3klDFXQKmONy2y8BWs/m6U1JHYMmtMRx4rMGtw4Uso+wCBE4g2xNuR+CJZYACZE
 kcMAgNnk
X-Proofpoint-GUID: K8F9quxuj-SBSVCaFhHwK1QyL3JzKBth
X-Proofpoint-ORIG-GUID: K8F9quxuj-SBSVCaFhHwK1QyL3JzKBth
X-Authority-Analysis: v=2.4 cv=EZrIQOmC c=1 sm=1 tr=0 ts=68cec828 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=iQ3mrrbCar-o9T1obZQA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_06,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 phishscore=0 suspectscore=0 priorityscore=1501
 impostorscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250920_082841_339325_8DBD95D9 
X-CRM114-Status: GOOD (  13.38  )
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

On Fri, Sep 19, 2025 at 08:21:04PM -0700, Wesley Cheng wrote:
> From: Elson Roy Serrao <quic_eserrao@quicinc.com>
> 
> QMP combo phy V6 and above use the clamp register from the PCS always on
> (AON) address space.  Update the driver accordingly.
> 
> Signed-off-by: Elson Roy Serrao <quic_eserrao@quicinc.com>
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 38 ++++++++++++++++---
>  .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h    | 12 ++++++
>  .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h   | 12 ++++++
>  3 files changed, 57 insertions(+), 5 deletions(-)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
