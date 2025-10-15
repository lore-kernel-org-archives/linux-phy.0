Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17E35CCD193
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 21:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TkW493ebW5s9GF7Gd5Ih+3hCR1hufuDRN+17Z7/YdyA=; b=gY2yEWcEo9tJz4
	/Epo9wNPuZcIuI0MD9d1Z3D6Dq+LS+75fjRu0kbgKMA8JKAnggY9kHA7Mrka/HKghYbear4JIVNVt
	1g1M91DID6lPyfTem5ZuCJAjkE0vXQRhiEdr56Rr/L/Bc+C2ShVVbCLiTObvO2JpT736A6HnZ5zQ6
	fXTA9fMSF+/gA5YWkhuebDP5xQDEvSewY+2Rg48xGQsjBOgZ+xGhSdpqr0UJ8u4T3bss9OO/kxG9b
	BJ5+EfFgD147DkEusm36v38dIE0LlEznjaITfEXzO9u048lkGrX5Tni4oiKWxjFD0rIIJ7F4PK/sP
	2a5RVywRSDcJFjzfDqIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v98sj-00000002voX-3FZ7;
	Wed, 15 Oct 2025 21:18:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v98sh-00000002voC-0k2C
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 21:18:00 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FIaLpn005001
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 21:17:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VJeGrgf9qBiX+zK6vs7ZHMmh
	QNY8bpXGFobNX4Fu/fY=; b=ILikasoguN8vUw9dY0Of4A5sKqiegwg4lgOnqIHC
	92cSed539XnnkW/n8gS+c0nlz5XMj32aN14MprGKJYOCq5H9foyUGa3FyQ9JtxHd
	/HjrIr1rlXkJgbIPmZB2iBYhsYZTqNjc1usYb363E+IJP1CPG1Ug8XQgs3/KnEAo
	kWhCtMt4jqZFEdIhyrC3F9WASSsDmKDtP08T8zcEIGD2k84iHHY0tkyHDFm1ZIvt
	xlJaa4Q5d97EguT4RpVki88wEOwnAId50KFjeeig7R0b49Xcb4CPK3ccUkhE3UG4
	CRKtgU1eYgCXdgQp0OY+kSvvOfWNXh2JE+zXHUswp1d6Kg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49s6mwr8f0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 21:17:58 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-79a3c16b276so2646556d6.0
        for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 14:17:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760563077; x=1761167877;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VJeGrgf9qBiX+zK6vs7ZHMmhQNY8bpXGFobNX4Fu/fY=;
        b=C/S5V8FYpr4w74xQvwI20n0ij+iNNs6cPbS1dVlpFm3/BeZFkivCNaxyZJZwj6emcP
         +wLb8wDinMGJaAYxlHLyc186nDValqqILcTbb9VWteZ8uzUwh+sv9nIOOZqHT2IZ8xaO
         XSr83tT6Wr2Tu908MUkW0BTH9KCg5LUhYa/Hv7rvLFJ/lkr/gUzhm3AqMnv8vLdAfjrU
         9TuzV+1DwCBm4Vxv/XM9XxnKzZVOsyxeg2d0q9sJXM8pWrNnYdJF2kGjDPavW1xAAs1f
         TxYgKP/j57BJK8EtX2xMqzNIETjU9yS8QUhUIBMI1FHzfLp8V8/QN/AuVmoIMw4kA7m0
         RNWw==
X-Forwarded-Encrypted: i=1; AJvYcCUzkrefNayMPnq6pfTe7fcsdCAbCos6acY4g6KYvLFzqvL03Als5+njv1Ktfeb9Dd7AJYDAetZPUJE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7iyTixickiXqMEYzbgdZ1A5qg13vgbojQ+fGOW1BByK37c6Eg
	X3ZM+2QRvTqHX8Rw48HesGMJhg9SyyYlTDbk0i/0PzG/4/WjqFFILkAkIcKEFAxL9NfT9061RDE
	iq1gXLgWb8n9XDsIkgljHiKAvAyVdpfYkRB+U61PXvPzTTyYMdjG3i1G+mklB71NT92Mq
X-Gm-Gg: ASbGncsI33+80Qb2IV+FcqiqzfJrZrSJnBFtm8o+qMBMuu0LBfIlhokjuHxnzV8+aWB
	Chj2OjNDlK/kxa2vaaRVJl7qBuOsAPbTb4x3uEewBqxbqLZ5kRitH0AJo/u7ZjkL9Wnk6cCn06j
	VDBc0RXb2uB3WPH35JG4oFJCOGw8Lz9HExTbU7jtw/C3/S9Vmvc5pgfF0YQU72JLNxCyv/xe0gW
	KidFft80n1OQfJwj48Gt5LK573v46X68UcfdFWvm1xpbWf1BBDNdwHzgcxUYttNH1Miaql9trNj
	1+zQx0N12bqjoNiMRC8SIoEJrK4EPRTP/dA4UM8Vv94mUkv2KUTjt+ImaQSDmY/w11EEsDmoyHH
	ZHmSSOjGvSs3Ie/AujXDT/o3gfAOPskVl0oBbavoUg74E3pu8vN7wNEaS3hTD0uyMSoMrZGE4VY
	a2vHFS13Mivug=
X-Received: by 2002:a05:622a:4ce:b0:4b9:d7c2:756a with SMTP id d75a77b69052e-4e6ead709e5mr430447411cf.77.1760563077224;
        Wed, 15 Oct 2025 14:17:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWUJjpWuy2SQ3uK986PVDHVWiBrMZNqixssrAxbnP8C6oKcxQyRgYATBifnIDH6x3LpocicA==
X-Received: by 2002:a05:622a:4ce:b0:4b9:d7c2:756a with SMTP id d75a77b69052e-4e6ead709e5mr430446851cf.77.1760563076717;
        Wed, 15 Oct 2025 14:17:56 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762ea3ab05sm50829681fa.44.2025.10.15.14.17.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 14:17:56 -0700 (PDT)
Date: Thu, 16 Oct 2025 00:17:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: Re: [PATCH v2 4/6] phy: qcom-qmp: pcs-pcie: Add v8 register offsets
Message-ID: <3frncuf654d6wjvegmlwvljouk2xehsmouwjkf2zlgke3t27he@3uh5zyfyglxe>
References: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
 <20251015-kaanapali-pcie-upstream-v2-4-84fa7ea638a1@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251015-kaanapali-pcie-upstream-v2-4-84fa7ea638a1@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDA4MyBTYWx0ZWRfX/iMmyMZUMkLR
 JAQ91B1Be+FExjdcjfDor7ysz/46jOFz1NbN3Usk6pBnLONRqcasuZnqp73WSNrmHUEwb79LfEz
 vIVQN2kog1FtZsLtj6TwIgTg+fkk6ciddcQOy2QauRBkOsXFZrdo/QfGs2+za5NYssqpLXoLi/D
 mJvc2PwQcz6VYcNLsTSKUy9ZpXS8Msn82UalCp5LgCzXoDJGfJBdu34U9cAoRq2zkeSRtDdFVgU
 6GBLPzGkP6R/yd6CKWHxqbJ0QmUSAnaK9icbwOSfBdGL0Zs//FyljNIPQowxWbhhDwFOQ4jZt0l
 Bpmul+Rk5ASCKN4/FAM2sVADk/O7HcZCvmWU3PQjUW7ktkGT0NlftqnQrhfsYfs9/VYYVB/9coi
 ivBv63FE/vzHcnKg8lSiBUFNI/Z9bw==
X-Authority-Analysis: v=2.4 cv=Fr4IPmrq c=1 sm=1 tr=0 ts=68f00f86 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=aHvCONSEC-igqZHWBgwA:9 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: Nu0jp-BKcWqzUXlxOUOLUpeQ8C7jJ3LC
X-Proofpoint-ORIG-GUID: Nu0jp-BKcWqzUXlxOUOLUpeQ8C7jJ3LC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_141759_238365_F7B129E6 
X-CRM114-Status: GOOD (  12.21  )
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

On Wed, Oct 15, 2025 at 03:27:34AM -0700, Qiang Yu wrote:
> Kaanapali SoC uses QMP phy with version v8 for PCIe Gen3 x2. Add the new
> PCS PCIE specific offsets in a dedicated header file.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h | 34 +++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
